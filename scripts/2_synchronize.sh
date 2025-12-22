# Install jq if not present
sudo apt-get install jq

# Function to extract owner, repository name, and path after main/ from a GitHub URL
extract_github_info() {
    local url="$1"

    # Extract owner, repository name, and path after main/
    local owner=$(echo "$url" | awk -F'/' '{print $4}')
    local repo=$(echo "$url" | awk -F'/' '{print $5}')
    local path=$(echo "$url" | awk -F'main/' '{print $2}')

    # Print the extracted information
    echo "$owner $repo $path"
}

# Function to get the last commit SHA from the GitHub API
get_last_commit() {
    local owner="$1"
    local repo="$2"
    local path="$3"

    local output=$(curl -L \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "https://api.github.com/repos/$owner/$repo/commits?path=$path")

    echo "$output" | jq --raw-output '.[0].sha'
}

# Function to clone the repository and move the subfolder
clone_repo() {
    local owner_git="$1"
    local repo_git="$2"
    local subfolder_git="$3"
    local path_ssphub="$4"

    mkdir temp
    cd temp
    git clone "https://github.com/$owner_git/$repo_git"
    rm -rf "../$path_ssphub"
    cp "$repo_git/$subfolder_git/" "../$path_ssphub" -rf
    cd ../
    rm -rf temp/
}


# Function to replace patterns in .qmd files
replace_in_qmd_files() {
    local folder_path="$1"
    local replacements_json="$2"

    # Check if the folder exists
    if [ ! -d "$folder_path" ]; then
        echo "Error: Folder '$folder_path' does not exist."
        return 1
    fi

    # Parse the replacements JSON and perform each replacement
    echo "$replacements_json" | jq -c '.[]' | while read -r replacement; do
        local old_pattern=$(echo "$replacement" | jq -r '.pattern_to_replace')
        local new_pattern=$(echo "$replacement" | jq -r '.replacement')

        # Find all .qmd files in the folder and replace the pattern
        find "$folder_path" -type f -name "*.qmd" -exec sed -i "s|$old_pattern|$new_pattern|g" {} +
    done
}


# Function to update the last_commit_sha in repo_fetch.json
update_commit_sha() {
    local old_commit_sha="$1"
    local new_commit_sha="$2"
    local json_file="scripts/2_repo_fetch.json"

    # Check if the JSON file exists
    if [ ! -f "$json_file" ]; then
        echo "Error: File '$json_file' does not exist."
        return 1
    fi

    # Update the last_commit_sha in the JSON file
    jq --arg old_sha "$old_commit_sha" --arg new_sha "$new_commit_sha" \
    '.[] |= if .last_commit_sha == $old_sha then .last_commit_sha = $new_sha else . end' \
    "$json_file" > tmp.json && mv tmp.json "$json_file"

    echo "Updated last_commit_sha from $old_commit_sha to $new_commit_sha in $json_file"
}


# Main script
main() {
    local json_file="scripts/2_repo_fetch.json"

    # Check if the JSON file exists
    if [ ! -f "$json_file" ]; then
        echo "Error: File '$json_file' does not exist."
        return 1
    fi

    # Read the JSON file and process each entry
    jq -c '.[]' "$json_file" | while read -r entry; do
        local path_to_folder_to_synchronize_from=$(echo "$entry" | jq -r '.path_to_folder_to_synchronize_from')
        local last_commit_sha=$(echo "$entry" | jq -r '.last_commit_sha')
        local path_to_folder_to_synchronize_to=$(echo "$entry" | jq -r '.path_to_folder_to_synchronize_to')
        local replacements=$(echo "$entry" | jq -c '.replacements')

        # Extract owner, repo, and path after main/
        local info=$(extract_github_info "$path_to_folder_to_synchronize_from")
        local owner=$(echo "$info" | awk '{print $1}')
        local repo=$(echo "$info" | awk '{print $2}')
        local path=$(echo "$info" | awk '{print $3}')

        # Get the last commit SHA
        local new_commit_sha=$(get_last_commit "$owner" "$repo" "$path")

        # Check if the last commit SHA is different
        if [ "$last_commit_sha" != "$new_commit_sha" ]; then
            echo "New commit found for $path_to_folder_to_synchronize_from"

            # Clone the repository and move the subfolder
            clone_repo "$owner" "$repo" "$path" "$path_to_folder_to_synchronize_to"

            # Replace patterns in .qmd files
            replace_in_qmd_files "$path_to_folder_to_synchronize_to" "$replacements"

            # Update the last commit SHA in the JSON file
            update_commit_sha "$last_commit_sha" "$new_commit_sha"

            # Commit the changes
            git add "$path_to_folder_to_synchronize_to" "$json_file"
            git commit -m "Update $path_to_folder_to_synchronize_to based on commit $new_commit_sha made to $path_to_folder_to_synchronize_from"
        else
            echo "No new commit found for $path_to_folder_to_synchronize_from"
        fi
    done
}

# To run the script
main

# Install jq if not present
# sudo apt-get install jq

# Function to extract owner, repository name, and path after main/ from a GitHub URL
extract_github_info() {
    local url="$1"

    # Extract owner, repository name, and path after main/
    local owner=$(echo "$url" | awk -F'/' '{print $4}' | tr -d '"')
    local repo=$(echo "$url" | awk -F'/' '{print $5}' | tr -d '"')
    local path=$(echo "$url" | awk -F'main/' '{print $2}' | tr -d '"')  # tr -d to remove trailing "

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
    "https://api.github.com/repos/$owner/$repo/commits?path=$path" --silent)

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
    echo "cloning https://github.com/$owner_git/$repo_git"
    git clone "https://github.com/$owner_git/$repo_git" --quiet --depth 1 --single-branch  # To clone only last commit for efficiency and main branch
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
    local json_file="$3"

    # Check if the JSON file exists
    if [ ! -f "$json_file" ]; then
        echo "Error: File '$json_file' does not exist."
        return 1
    fi

    # Update the last_commit_sha in the JSON file
    jq --arg old_sha "$old_commit_sha" --arg new_sha "$new_commit_sha" \
    '.[] |= if .last_commit_sha == $old_sha then .last_commit_sha = $new_sha else . end' \
    "$json_file" > tmp.json && mv tmp.json "$json_file"

    echo "Updated last_commit_sha from ${old_commit_sha:0:6}... to ${new_commit_sha:0:6}... in $json_file"
}


# Main script
main() {
    local json_file="scripts/2_repo_fetch.json"
    local branch_created=false

    # Check if the JSON file exists
    if [ ! -f "$json_file" ]; then
        echo "Error: File '$json_file' does not exist."
        return 1
    fi

    # Read the JSON file and process each entry
    # Initialization for number of elements to loop over the file
    declare -i nb_elem
    nb_elem=$(jq 'length' "$json_file")

    for ((i=1; i <=nb_elem; i++)); do
        # Extract values of ith element of the file
        local path_to_folder_to_synchronize_from=$(jq --argjson index "$((i-1))" '.[$index].path_to_folder_to_synchronize_from' "$json_file")
        local last_commit_sha=$(jq --argjson index "$((i-1))" '.[$index].last_commit_sha' "$json_file" | tr -d '"')
        local path_to_folder_to_synchronize_to=$(jq --argjson index "$((i-1))" '.[$index].path_to_folder_to_synchronize_to' "$json_file" | tr -d '"')
        local replacements=$(jq --argjson index "$((i-1))" '.[$index].replacements' "$json_file")

        # Extract owner, repo, and path after main/
        local info=$(extract_github_info "$path_to_folder_to_synchronize_from")
        local owner=$(echo "$info" | awk '{print $1}')
        local repo=$(echo "$info" | awk '{print $2}')
        local path=$(echo "$info" | awk '{print $3}')

        # Get the last commit SHA
        local new_commit_sha=$(get_last_commit "$owner" "$repo" "$path")

        # Check if the last commit SHA is different
        if [ "$last_commit_sha" != "$new_commit_sha" ]; then
            echo "Commit "${new_commit_sha:0:6}" found for $path_to_folder_to_synchronize_from"

            # Debug
            echo "will perform the cloning with params
            last commit : "$last_commit_sha"
            new_commit_sha : "$new_commit_sha"
            owner: "$owner"
            repo: "$repo"
            path: "$path"
            path_to_folder_to_synchronize_to: "$path_to_folder_to_synchronize_to"
            replacement:  "${replacements:0:20}""

            # # Delete branch
            git branch -D origin/auto_fetch
            git branch -d auto_fetch

            # Create a branch only if it hasn't been created yet
            if [ "$branch_created" = false ]; then
                git pull origin fusion_site_ssplab
                git checkout -b auto_fetch
                # git push -u origin auto_fetch
                branch_created=true
            fi

            git checkout auto_fetch

            # Clone the repository and move the subfolder
            clone_repo "$owner" "$repo" "$path" "$path_to_folder_to_synchronize_to"

            # Replace patterns in .qmd files
            replace_in_qmd_files "$path_to_folder_to_synchronize_to" "$replacements"

            # Update the last commit SHA in the JSON file
            update_commit_sha "$last_commit_sha" "$new_commit_sha" "$json_file"

            # Commit the changes
            git add "$path_to_folder_to_synchronize_to" "$json_file"
            git commit -m "Update $path_to_folder_to_synchronize_to based on commit $new_commit_sha made to $path_to_folder_to_synchronize_from"
            # # git push
        else
            echo "No new commit since ${last_commit_sha:0:6} found for $path_to_folder_to_synchronize_from"
        fi
    done
}

# To run the script
main

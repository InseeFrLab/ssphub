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

function get_repos_in_organization() {
    local -r results="$1"
    local -r organization="$2"

    local -r base_url="https://api.github.com/orgs/${organization}/repos"
    url="${base_url}"

    rm -f "${results}"
    touch "${results}"
    for ((i=2; ; i+=1)); do
        contents="$(curl -u "jrbeverly:${GITHUB_TOKEN}" -s "${url}")"
        if jq -e '. | select(type == "array" and length == 0)' <<< "${contents}" >/dev/null; then
            break
        fi

        url="${base_url}?page=${i}"
        echo "${contents}"
        echo "${contents}" | jq -r '.[] | .full_name' | tr '[:upper:]' '[:lower:]' >> "${results}"
        sleep 10
    done
}

function get_repos_in_user() {
    local -r results="$1"
    local -r user="$2"

    local -r base_url="https://api.github.com/users/${user}/repos"
    url="${base_url}"

    rm -f "${results}"
    touch "${results}"
    for ((i=2; ; i+=1)); do
        contents="$(curl -u "jrbeverly:${GITHUB_TOKEN}" -s "${url}")"
        if jq -e '. | select(length == 0)' <<< "${contents}" >/dev/null; then
            break
        fi

        url="${base_url}?page=${i}"
        echo "${contents}"
        echo "${contents}" | jq -r '.[] | .full_name' | tr '[:upper:]' '[:lower:]' >> "${results}"
        sleep 10
    done
}

function get_github_repo() {
    local -r repo="$1"
    local -r result="$2"

    local -r url="https://api.github.com/repos/${repo}"
    curl -s -u "jrbeverly:${GITHUB_TOKEN}" \
        -H "Accept: application/vnd.github.mercy-preview+json" \
        "${url}" > "${result}"
}

function get_github_repo_file() {
    local -r repo="$1"
    local -r result="$2"

    local -r url="https://api.github.com/repos/${repo}/contents/README.md"
    curl -s -u "jrbeverly:${GITHUB_TOKEN}" \
        -H "Accept: application/vnd.github.mercy-preview+json" \
        "${url}" > "${result}"
}
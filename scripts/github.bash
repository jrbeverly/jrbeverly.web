function get_repos_in_organization() {
    local -r results="$1"
    local -r organization="$2"

    local -r base_url="https://api.github.com/orgs/${organization}/repos"
    url=base_url

    rm -f "${results}"
    touch "${results}"
    for ((i=2; ; i+=1)); do
        contents="$(curl -u "jrbeverly:${GITHUB_TOKEN}" -s "${url}")"
        if jq -e '..|select(type == "array" and length == 0)' <<< "${contents}" >/dev/null; then 
            break
        fi

        url="${base_url}?page=${i}"
        echo "${contents}" | jq -r '.[] | .full_name' | tr '[:upper:]' '[:lower:]' >>"${results}"
    done
}
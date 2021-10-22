#!/bin/bash
set -euo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DIR_ROOT="$( dirname "${DIR}" )"
DIR_OUTPUT="${DIR_ROOT}/outputs"

mkdir -p "${DIR_OUTPUT}"

source "${DIR}/github.bash"

dir_repo="${DIR}/repositories"
rm -rf "${dir_repo}"
mkdir -p "${dir_repo}"
while IFS= read -r org; do
    echo "[GitHub] Synchronizing from ${org}"
    get_repos_in_organization "${dir_repo}/${org}" "${org}"
done <"${DIR}/data/organizations"

user="$(cat "${DIR}/data/user")"
echo "[GitHub] Synchronizing from ${user}"
get_repos_in_user "${dir_repo}/${user}" "${user}"


echo "[GitHub] Synchronizing posts from Git Users"
for dataset in "${DIR}/repositories"/* ; do
    dataset_name="$(basename "${dataset}")"
    while IFS= read -r repo; do
        echo "[GitHub/${repo}] Synchronizing properties"
        resp="$(mktemp -t github-XXXXXXXXXXXXXXXXX.json)"
        get_github_repo "${repo}" "${resp}"

        topics="$(jq -r '.topics' "${resp}")"
        topics="$(jq -r ". |= . + [\"org:${dataset_name}\"]" <<< "$topics")"
        name="$(jq -r '.name' "${resp}")"
        ssh_url="$(jq -r '.ssh_url' "${resp}")"
        created_at="$(jq -r '.created_at' "${resp}")"
        html_url="$(jq -r '.html_url' "${resp}")"
        description="$(jq -r '.description' "${resp}")"

        readme_resp="$(mktemp -t github-XXXXXXXXXXXXXXXXX.json)"
        readme_file="$(mktemp -t github-XXXXXXXXXXXXXXXXX.md)"
        get_github_repo_file "${repo}" "${readme_resp}"
        
        download_url="$(jq -r '.download_url' "${readme_resp}")"
        if [[ "${download_url}" == "null" ]]; then
            continue
        fi
        curl -sSL "${download_url}" -o "${readme_file}"

        result_file="${DIR_OUTPUT}/${dataset_name}-${name}.md"
        touch "${result_file}"
        echo """+++
author=\"jrbeverly\"
title=\"${name}\"
date=\"${created_at}\"
description=\"${description}\"
tags=${topics}
+++
""" > "${result_file}" 
        cat "${readme_file}" >> "${result_file}" 
    done <"${dataset}"
done

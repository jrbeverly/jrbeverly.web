#!/bin/bash
set -euo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DIR_ROOT="$( dirname "${DIR}" )"
DIR_OUTPUT="${DIR_ROOT}/outputs"

mkdir -p "${DIR_OUTPUT}"

source "${DIR}/github.bash"

dir_repo="${DIR}/repositories"
mkdir -p "${dir_repo}"
while IFS= read -r org; do
    echo "[GitHub] Synchronizing from ${org}"
    get_repos_in_organization "${dir_repo}/${org}" "${org}"
done <"${DIR}/data/organizations"

user="$(cat "${DIR}/data/user")"
echo "[GitHub] Synchronizing from ${user}"
get_repos_in_user "${dir_repo}/${user}" "${user}"

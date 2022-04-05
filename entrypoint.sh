#!/bin/sh -l

set -e

current_branch=$GITHUB_HEAD_REF
parent_branch=$GITHUB_BASE_REF
echo "Working branch: $current_branch"
echo "Parent branch: $parent_branch"


curl_output=$(curl --location --request POST 'https://ias.puppet-strings.com/ias-manager/v1/catalogsDiff' \
--header 'Content-Type: application/json' \
--data-raw '{
    "environments": {
        "newEnvironment": "'$current_branch'",
        "currentEnvironment": "'$parent_branch'"
    },
    "authentication": {
        "token": "'$TOKEN'",
        "clientID": "'$CLIENT_ID'"
    }
}')

echo "DEBUG: result is:"
echo $curl_output

echo "Diff is: "
echo $curl_output | jq .


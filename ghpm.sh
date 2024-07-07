#!/bin/sh

echo "  -| git Project Manager |-"

# Check gh authentication
AUTH="`gh auth status | grep 'Active account: '`"

AUTH_STATE="`sed 's/.*[:][ ]//' <<< $AUTH`"

if [[ $AUTH_STATE != "true" ]]; then
    echo "Please authenticate gh cli using 'gh auth login'"
    exit 1
fi

echo $AUTH_STATE
#!/bin/bash
# with tenantname
curl -s -X POST $OS_AUTH_URL/tokens \
    -H "Content-Type: application/json" \
    -d '{"auth": {"tenantName": "'"$OS_PROJECT_NAME"'", "passwordCredentials": {"username": "'"$OS_USERNAME"'", "password": "'"$OS_PASSWORD"'"}}}' \
    | python -m json.tool

# without tenantname
curl -s -X POST $OS_AUTH_URL/tokens \
    -H "Content-Type: application/json" \
    -d '{"auth": {"tenantName": "", "passwordCredentials": {"username": "'"$OS_USERNAME"'", "password": "'"$OS_PASSWORD"'"}}}' \
    | python -m json.tool

echo "token id will be your token"

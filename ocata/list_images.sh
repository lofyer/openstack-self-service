#!/bin/bash
curl -s -H "X-Auth-Token: $OS_TOKEN" \
    http://8.21.28.222:8774/v2/$OS_PROJECT_ID/images \
    | python -m json.tool

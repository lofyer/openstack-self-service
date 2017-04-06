#!/bin/bash
curl -s -H "X-Auth-Token: $OS_TOKEN" \
    $OS_COMPUTE_API/flavors \
    | python -m json.tool

#!/bin/bash
curl -X POST -H "X-Auth-Token:$1" -H "Content-Type: application/json" -d  '
{       
    "server": {  
    "name": "MyFirstApiVm",
    "imageRef": "5e9cecc5-ae7a-4f7e-b488-ed22daa0e2ab",
    "flavorRef": "1", 
    "key_name" : "MyFirstKeyPair"
    }          
}' http://127.0.0.1:8774/v2/[YOUR_TENANT_ID]/servers | python -m json.tool

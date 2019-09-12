#!/bin/sh
set -eu

MESSAGE=`echo -n $MESSAGE|python -c 'import json,sys; print(json.dumps(sys.stdin.read()))'`

curl -X POST -H "Content-Type: application/json" --data "{ \"text\": $MESSAGE }" $WEBHOOK_URL

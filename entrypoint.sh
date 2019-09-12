#!/bin/sh
set -eu

MESSAGE=`echo $MESSAGE|python -c 'import json,sys; print(json.dumps(sys.stdin.read()))'`

echo $MESSAGE
curl -X POST -H "Content-Type: application/json" --data "{ \"text\": \"$MESSAGE\" }" $WEBHOOK_URL

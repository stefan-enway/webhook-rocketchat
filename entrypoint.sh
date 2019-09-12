#!/bin/sh
set -eu

echo $MESSAGE
MESSAGE=`echo -n $MESSAGE|python -c 'import json,sys; print(json.dumps(sys.stdin.read()).replace(r"\n", r"\r\n"))'`

curl -X POST -H "Content-Type: application/json" --data "{ \"text\": $MESSAGE }" $WEBHOOK_URL

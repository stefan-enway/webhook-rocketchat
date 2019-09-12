#!/bin/sh
set -eu

curl -X POST -H "Content-Type: application/json" --data "{ \"text\": \"$INPUT_MESSAGE\" }" $WEBHOOK_URL

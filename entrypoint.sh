#!/bin/sh
set -eu

curl -X POST -H "Content-Type: application/json" --data "{ \"text\": \"$MESSAGE\" }" $WEBHOOK_URL

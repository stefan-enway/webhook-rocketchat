#!/bin/sh
set -eu

echo curl -X POST -H "Content-Type: application/json" --data "{ \"text\": $MESSAGE }" $WEBHOOK_URL

#!/bin/sh
set -eu

curl -X POST -H "Content-Type: application/json" --data "{ \"text\": \"$message\" }" $WEBHOOK_URL

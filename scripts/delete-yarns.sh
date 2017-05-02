#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/yarns"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

curl --include --request DELETE http://localhost:4741/yarns/12 \
--header "Authorization: Token token=BAhJIiU3MDZhZGVlNWNkZWFhNjMxM2ZhMjhjZmE5ZDY4MGY3MgY6BkVG--3201c7efca11d4724cffbfbd26bf30e2fb5b6f2a"

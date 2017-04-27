#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/yarns"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

curl --include --request GET http://localhost:4741/yarns

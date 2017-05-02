#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/yarns"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

curl --include --request PATCH http://localhost:4741/yarns/7 \
--header "Content-Type: application/json" \
--header "Authorization: Token token=BAhJIiVkZGIxMTgyYzdmOGJjZGJmZTNhZGFmMmNiNjUzZjMxYQY6BkVG--3c43e138509052e8a38364dcbd81572eeadf61b7" \
--data '{
  "yarn": {
    "name": "shetlandd",
    "quantity": 3,
    "yards": 250,
    "color": "GRAY",
    "project": "shawl"
  }
}'

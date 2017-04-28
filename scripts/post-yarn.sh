#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-up"
TOKEN="BAhJIiVlMDhhY2I0MzM1OGYyOTg1NGJjYjg0Zjg2ZjViYTI3OQY6BkVG--b685b613fc2cd064231ea1a080eff1f6f105cf41"
curl --include --request POST http://localhost:4741/yarns \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUxOTdkZWY5Y2ZiN2NlZmM0OTgzNzBlY2M2MTk1ODJhMgY6BkVG--4c9365cfa4fbc086c4f639ba1c6fe17bbeb4a696" \
  --data '{
    "yarn": {
      "user_id": 2,
      "name": "shetlan",
      "quantity":3,
      "yards":250,
      "color": "gray",
      "project": "shawl"
    }
  }'

## post doctors
curl --include --request POST http://localhost:4741/yarns \
  --header "Content-Type: application/json" \
  --data '{
    "yarn": {
      "user_id": 1,
      "name": "mountain mohair",
      "quantity": 3,
      "yards: 250,
      "color": "gray",
      "project": "sweater"
    }
  }'

##  without toekn
curl --include --request POST http://localhost:4741/yarns \
  --header "Content-Type: application/json" \
  --data '{
    "yarn": {
      "user_id": "1",
      "name": "mountain mohair",
      "quantity": "3",
      "yards: "250",
      "color": "gray",
      "project": "sweater"
    }
  }'
## copied from create-example
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/examples"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "example": {
        "text": "'"${TEXT}"'"
      }
    }'

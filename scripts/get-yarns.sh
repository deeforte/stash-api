#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/yarns"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

curl --include --request GET http://localhost:4741/yarns \
  --header "Authorization: Token token=BAhJIiUzNmJhMGVmMjE5NDBhZGYyMmUzZmMxZDhjZWU5OGQyYgY6BkVG--c686df885cbbc4353b645542fe16bce826b86fcf"

curl --include --request GET https://stash-api-heroku.herokuapp.com/yarns

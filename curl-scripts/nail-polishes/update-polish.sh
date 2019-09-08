#!/bin/bash

curl "http://localhost:4741/nail_polishes/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "nail_polish": {
      "brand": "'"${BRAND}"'",
      "color_name": "'"${COLOR_NAME}"'",
      "color": "'"${COLOR}"'"
    }
  }'

echo

#!/bin/bash

curl "http://localhost:4741/nail_polishes" \
  --include \
  --request POST \
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

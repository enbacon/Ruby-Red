#!/bin/bash

curl "http://localhost:4741/nail_polishes/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \


echo

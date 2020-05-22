#!/bin/sh

REPO="${1}"
PAYLOAD="${2}"

curl -XPOST -u "${{ secrets.PAT_USERNAME }}:${{ secrets.PAT_TOKEN }}" \
  -H "Accept: application/vnd.github.everest-preview+json" \
  -H "Content-Type: application/json" \
  "https://api.github.com/repos/${REPO}/dispatches" \
  --data "${PAYLOAD}"

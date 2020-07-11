#!/bin/bash
# dump author-contact following relationships
echo -e "author\tcontact\tfollowing\ttimestamp"
ssb-server messagesByType --type contact --reverse | jq -r '"\(.value.author)\t\(.value.content.contact)\t\(.value.content.following)\t\(.value.timestamp)"'

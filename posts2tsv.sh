#!/bin/bash
#dump post metadata (without text of post)
echo -e "key\tprevious\tsequence\tauthor\ttimestamp\troot\tfork\tchannel"
ssb-server messagesByType --type post --reverse | jq -r '"\(.key)\t\(.value.previous)\t\(.value.sequence)\t\(.value.author)\t\(.value.timestamp)\t\(.value.content.root)\t\(.value.content.fork)\t\(.value.content.channel)"'

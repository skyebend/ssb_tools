#!/bin/bash
# print only about messages where an author provides a name for themself
echo -e "author\name\ttimestamp"
ssb-server messagesByType --type about --reverse | jq -r ' select (.value.author == .value.content.about) | select(.value.content.name) | "\(.value.author)\t\(.value.content.name)\t\(.value.timestamp)"'

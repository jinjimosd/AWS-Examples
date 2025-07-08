#!/bin/bash
set -e
# aws s3 ls
aws s3api list-buckets | jq -r '.Buckets | sort_by(.CreationDate) | reverse | .[0] | .Name' 
echo '...'
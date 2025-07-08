#!/bin/bash
set -e
if [ -z "$1" ]; then
    echo "No bucket name provided. Usage: $0 bucket-name"
    exit 1
fi
BUCKET_NAME=$1
REGION=${2:-us-east-1}
echo "Creating bucket $BUCKET_NAME in region $REGION"
if [ "$REGION" = "us-east-1" ]; then
    aws s3api create-bucket --bucket "$BUCKET_NAME" --region "$REGION" --query Location
else
    aws s3api create-bucket --bucket "$BUCKET_NAME" --create-bucket-configuration LocationConstraint="$REGION" --query Location
fi

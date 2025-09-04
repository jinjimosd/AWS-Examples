## Create a bucket
```
aws s3 mb s3://bucket-policy-fun-abc-1245
```

## Update bucket policy
```
aws s3api put-bucket-policy --bucket bucket-policy-fun-abc-1245 --policy file://policy.json
```

## User iam identity and test policy
```
aws s3api put-object --bucket bucket-policy-fun-abc-1245 --body adam.txt --key adam.txt --profile adam
aws s3api put-object --bucket bucket-policy-fun-abc-1245 --body adam.txt --key adam.txt --tagging "Department=ancestor" --profile adam
```

## Clean s3
```
aws s3 rm s3://bucket-policy-fun-abc-1245 --recursive
aws s3 rb s3://bucket-policy-fun-abc-1245
```
## Create a bucket
```sh
aws s3 mb s3://acl-fun-abc-1245
```

## Turn of Block Public Access for ACLs
```sh
aws s3api put-public-access-block \
    --bucket "acl-fun-abc-1245" \
    --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
aws s3api get-public-access-block --bucket "acl-fun-abc-1245"
```

## Change Bucket  Ownership
```sh
aws s3api put-bucket-ownership-controls \
    --bucket "acl-fun-abc-1245" \
    --ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```

## Clean s3
```sh
aws s3 rm s3://acl-fun-abc-1245 --recursive
aws s3 rb s3://acl-fun-abc-1245
```
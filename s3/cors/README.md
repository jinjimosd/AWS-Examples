## Create a WEBSITE 1
```
aws s3 mb s3://cors-fun-ab-112
```

## Change block public access
```
aws s3api put-public-access-block \
    --bucket "cors-fun-ab-112" \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
aws s3api get-public-access-block --bucket "cors-fun-ab-112"
```

## Create a bucket policy
```
aws s3api put-bucket-policy --bucket cors-fun-ab-112 --policy file://policy.json
```

## Turn on static website hosting
```
aws s3api put-bucket-website --bucket cors-fun-ab-112 --website-configuration file://website.json
```

## Upload our index.html file and include a resource that would be cross-origin
```
aws s3 cp index.html s3://cors-fun-ab-112
```

## View the website and see if the index.html is there
```
curl http://cors-fun-ab-112.s3-website-ap-southeast-1.amazonaws.com/
```

## Apply a CORS origin

## Create a WEBSITE 2
```
aws s3 mb s3://cors-fun2-ab-112
```

## Change block public access
```
aws s3api put-public-access-block \
    --bucket "cors-fun2-ab-112" \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
aws s3api get-public-access-block --bucket "cors-fun2-ab-112"
```

## Create a bucket policy
```
aws s3api put-bucket-policy --bucket cors-fun2-ab-112 --policy file://policy2.json
```

## Turn on static website hosting
```
aws s3api put-bucket-website --bucket cors-fun2-ab-112 --website-configuration file://website.json
```

## Upload our javascript file
```
aws s3 cp hello.js s3://cors-fun2-ab-112
```

## Create api gateway with mock response and then test the endpoint
```
curl -X POST \
  -H "Content-Type: application/json" \
  http://ulpknxljgk.execute-api.ap-southeast-1.amazonaws.com/prod/hello

```

## Set CORS on our bucket
```
aws s3api put-bucket-cors --bucket cors-fun-ab-112 --cors-configuration file://cors.json
```




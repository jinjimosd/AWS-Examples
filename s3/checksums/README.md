## Create a new s3 bucket
```
aws s3 mb s3://checksums-example-ab-2345
```

## Create a file that will we do a checksum on
```
echo "Hello Mars" > myfile.txt
```

## Get a checksum of a file for md5
```
md5sum myfile.txt
8ed2d86f12620cdba4c976ff6651637f  myfile.txt
```

## Upload our file and look at its etag
```
aws s3 cp myfile.txt s3://checksums-example-ab-2345
aws s3api head-object --bucket checksums-example-ab-2345 --key myfile.txt
```

## Generate a Custom Checksum
```
CHECKSUM_SHA1=$(openssl dgst -sha1 -binary myfile.txt | base64)
```

## Upload File with Custom Checksum
```
aws s3api put-object \
    --bucket="checksums-example-ab-2345" \
    --key="myfilesha1.txt" \
    --body="myfile.txt" \
    --checksum-algorithm="SHA1" \
    --checksum-sha1="$CHECKSUM_SHA1" \
    --metadata ChecksumSHA1="$CHECKSUM_SHA1"
```
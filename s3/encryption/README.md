## Create a bucket
```sh
aws s3 mb s3://encryption-fun-ab-112
```

## Create a file and Put object with encryption SSE-S3
```sh
echo "Hello World" > hello.txt
aws s3 cp hello.txt s3://encryption-fun-ab-112
```

## Put object with encryption of SSE-KMS
```sh
aws s3api put-object \
--bucket encryption-fun-ab-112 \
--key hello.txt \
--body hello.txt \
--server-side-encryption aws:kms \
--ssekms-key-id aaa07d6c-8670-4693-881f-e810074d8edc
```

## Put Object with SSE-C [Failed Attempt]
```sh
export BASE_ENCODED_KEY=$(openssl rand -base64 32)
echo $BASE_ENCODED_KEY

export MD5_VALUE=$(echo $BASE_ENCODE_KEY | md5sum | awk '{print $1}' | base64 -w0)
echo $MD5_VALUE

aws s3api put-object \
--bucket encryption-fun-ab-112 \
--key hello.txt \
--body hello.txt \
--sse-customer-algorithm AES256 \
--sse-customer-key $BASE_ENCODED_KEY \
--sse-customer-key-md5 $MD5_VALUE

An error occurred (InvalidArgument) when calling the PutObject operation: The calculated MD5 hash of the key did not match the hash that was provided.
```

## Put Object with SSE-C via aws s3api
Link: https://www.scaleway.com/en/docs/object-storage/api-cli/enable-sse-c/

```sh
openssl rand -out ssec.key 32
export BASE_ENCODED_KEY=$(cat ssec.key | base64)
export MD5_VALUE=$(openssl dgst -md5 -binary ssec.key | base64)
aws s3api put-object \
--bucket encryption-fun-ab-112 \
--key hello.txt \
--body hello.txt \
--sse-customer-algorithm AES256 \
--sse-customer-key $BASE_ENCODED_KEY \
--sse-customer-key-md5 $MD5_VALUE

aws s3api get-object \
--bucket encryption-fun-ab-112 \
--key hello.txt \
hello.txt \
--sse-customer-algorithm AES256 \
--sse-customer-key $BASE_ENCODED_KEY \
--sse-customer-key-md5 $MD5_VALUE

```
 
## Put object with SSE-C via aws S3
Link: https://catalog.us-east-1.prod.workshops.aws/workshops/aad9ff1e-b607-45bc-893f-121ea5224f24/en-US/s3/serverside/ssec

```sh
openssl rand -out ssec.key 32
aws s3 cp hello.txt s3://encryption-fun-ab-112/hello.txt \
--sse-c AES256 \
--sse-c-key fileb://ssec.key

aws s3 cp s3://encryption-fun-ab-112/hello.txt hello.txt \
--sse-c AES256 \
--sse-c-key fileb://ssec.key
```

## Clean
```sh
aws s3 rm s3://encryption-fun-ab-112 --recursive
aws s3 rb s3://encryption-fun-ab-112
rm ssec.key
```

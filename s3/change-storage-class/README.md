## Create a bucket
```sh
aws s3 mb s3://metadata-fun-abc-1245
```

## Create a new file
```sh
echo "Hello World" > hello.txt
```

## Upload file with metadata
```sh
aws s3api put-object --bucket="metadata-fun-abc-1245" --key="hello.txt" --metadata Purpose=study
```

## Clean s3
```sh
aws s3 rm s3://metadata-fun-abc-1245 --recursive
aws s3 rb s3://metadata-fun-abc-1245
```
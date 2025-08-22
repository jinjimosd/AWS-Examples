## Create a bucket
```
aws s3 mb s3://metadata-fun-abc-1245
```

## Create a new file
```
echo "Hello World" > hello.txt
```

## Upload file with metadata
```
aws s3api put-object --bucket="metadata-fun-abc-1245" --key="hello.txt" --metadata Purpose=study
```

## Clean s3
```
aws s3 rm s3://metadata-fun-abc-1245 --recursive
aws s3 rb s3://metadata-fun-abc-1245
```
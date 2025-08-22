## Create a bucket
```
aws s3 mb s3://metadata-fun-abc-1245
```

## Create a new file
```
echo "Hello Mars" > hello.txt
```

## Upload file with metadata
```
aws s3api put-object --bucket="metadata-fun-abc-1245" --key="hello.txt" --metadata Planet=Mars
```

## Get Metadata through head object
```
aws s3api head-object --bucket="metadata-fun-abc-1245" --key="hello.txt"
```

## Clean s3
```
aws s3 rm s3://metadata-fun-abc-1245 --recursive
aws s3api delete-bucket --bucket="metadata-fun-abc-1245"
```
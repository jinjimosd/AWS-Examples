- Installl pulumi
- Create Pulumi account, create access token
- Run
```
pulumi new aws-python 
# paste access-token
# project name: s3-simple-sdk
# project description: A python project for AWS S3 to simply create a bucket
# stack name dev
# region us-east-1
pulumi up
pulumi destroy -s jinjimosd-org/s3-simple-sdk/dev
pulumi stack rm jinjimosd-org/s3-simple-sdk/dev
```
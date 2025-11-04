## Create a user with no permission
We need to create a new user with no permissions and generate out access keys
```sh
aws iam create-user --user-name eren
aws iam create-access-key --user-name eren --output table
aws configure
```
Test who you are:
```
aws sts get-caller-identity --profile eren
aws s3 ls --profile eren
```

## Create a role
We need to create a role that will access a new resource

## Use new user credentials and assume role


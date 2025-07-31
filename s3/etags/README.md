```
terraform init
terraform plan
terraform apply --auto-approve
aws s3api list-buckets | jq -r '.Buckets | sort_by(.CreationDate) | reverse | .[0] | .Name' 
aws s3 ls terraform-20250731064401181200000001
```
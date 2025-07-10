Import-Module AWS.Tools.S3

$region = "us-east-1"
$bucketName = Read-Host -Prompt "Enter the s3 bucket name"
Write-Host "AWS Region: $region"
Write-Host "Bucket Name: $bucketName"

function BucketExists {
    $bucket = Get-S3Bucket -BucketName $bucketName -ErrorAction SilentlyContinue
    return $null -ne $bucket
}

if (-not (BucketExists)) {
    Write-Host "Bucket $bucketName does not exist. Creating..."
    New-S3Bucket -BucketName $bucketName -Region $region
} else {
    Write-Host "Bucket $bucketName already exists..."
}


# Create a new file
$fileName = "testfile.txt"
$fileContent = "This is a test file."
Set-Content -Path $fileName -Value $fileContent

Write-S3Object -BucketName $bucketName -File $fileName -Key $fileName -Region $region

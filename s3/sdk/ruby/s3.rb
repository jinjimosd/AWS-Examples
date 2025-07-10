# Load AWS SDK for S3, Pry for debugging, and SecureRandom for UUID generation
require 'aws-sdk-s3'
require 'pry'
require 'securerandom'

# Get the bucket name from environment variable
bucket_name = ENV['BUCKET_NAME']
region = 'ca-central-1'
puts "Target bucket: #{bucket_name}"

# Initialize S3 client
client = Aws::S3::Client.new(region: region)

# Create S3 bucket in the specified region
resp = client.create_bucket({
  bucket: bucket_name,
  create_bucket_configuration: {
    location_constraint: region,
  },
})
puts "Bucket created: #{bucket_name}"

# Generate a random number of files between 1 and 10
number_of_files = 1 + rand(10)
puts "Number of files to generate and upload: #{number_of_files}"

# Loop to generate and upload each file
number_of_files.times do |i|
  puts "Creating file #{i + 1} of #{number_of_files}"

  file_name = "file#{i}.txt"
  output_path = "/tmp/#{file_name}"  # Use /tmp to avoid permission issues

  # Write a random UUID to the file
  File.open(output_path, "w") do |f|
    f.write SecureRandom.uuid
  end

  # Upload file to S3
  File.open(output_path, "rb") do |f|
    client.put_object(bucket: bucket_name, key: file_name, body: f)
  end

  puts "Uploaded #{file_name} to S3"
end

puts "All files uploaded successfully."

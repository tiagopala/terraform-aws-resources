# S3 Buckets
resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-test-bucket"

  tags = {
    Name = "Bucket"
  }
}

resource "aws_s3_bucket_acl" "bucket_example" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
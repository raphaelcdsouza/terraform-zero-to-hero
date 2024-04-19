resource "aws_s3_bucket" "bucket" {
  bucket = "raphaelcdsouza-remote-state"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
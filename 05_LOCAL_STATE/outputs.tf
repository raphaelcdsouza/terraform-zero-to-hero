output "bucket_id" {
  description = "Bucket ID created on AWS"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "Bucket ARN created on AWS"
  value       = aws_s3_bucket.bucket.arn
}
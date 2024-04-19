output "subnet_ids" {
  description = "AWS Subnet IDs"
  value       = aws_subnet.subnet[*].id
}

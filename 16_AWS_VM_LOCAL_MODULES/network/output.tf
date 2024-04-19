output "subnet_id" {
  description = "AWS Subnet ID"
  value       = aws_subnet.subnet.id
}

output "security_group_id" {
  description = "AWS Security Group ID"
  value       = aws_security_group.security_group.id
}
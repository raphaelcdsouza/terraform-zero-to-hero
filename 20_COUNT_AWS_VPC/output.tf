output "subnet_0_id" {
  description = "AWS Subnet ID"
  value       = aws_subnet.subnet[0].id
}

output "subnet_1_id" {
  description = "AWS Subnet ID"
  value       = aws_subnet.subnet[1].id
}

output "subnet_2_id" {
  description = "AWS Subnet ID"
  value       = aws_subnet.subnet[2].id
}

output "vpc_id_default" {
  description = "AWS VPC ID at default region"
  value       = aws_vpc.default.id
}

output "vpc_id_provider_1" {
  description = "AWS VPC ID at provider 1 region"
  value       = aws_vpc.provider_1.id
}

output "vpc_id_provider_2" {
  description = "AWS VPC ID at provider 2 region"
  value       = aws_vpc.provider_2.id
}
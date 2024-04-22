output "vm_1_public_ip" {
  description = "AWS VM 1 Public IP"
  value       = aws_instance.vm_1.public_ip
}

output "vm_2_public_ip" {
  description = "AWS VM 2 Public IP"
  value       = aws_instance.vm_2.public_ip
}
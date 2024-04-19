output "vm_ip" {
  description = "Azure VM Public IP"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}
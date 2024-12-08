output "vm_name" {
  value       = azurerm_linux_virtual_machine.example.name
  description = "The name of the Linux Virtual Machine."
}

output "vm_admin_username" {
  value       = azurerm_linux_virtual_machine.example.admin_username
  description = "The admin username for the Linux Virtual Machine."
}

output "vm_private_ip" {
  value       = azurerm_network_interface.example.private_ip_address
  description = "The private IP address of the Linux Virtual Machine."
}

output "vm_id" {
  value       = azurerm_linux_virtual_machine.example.id
  description = "The ID of the Linux Virtual Machine."
}

output "vm_location" {
  value       = azurerm_linux_virtual_machine.example.location
  description = "The location of the Linux Virtual Machine."
}

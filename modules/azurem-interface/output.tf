output "network_interface_names" {
  description = "The names of the network interfaces"
  value       = { for key, nic in azurerm_network_interface.network_interface : key => nic.name }
}

output "network_interface_ids" {
  description = "The IDs of the network interfaces"
  value       = { for key, nic in azurerm_network_interface.network_interface : key => nic.id }
}

output "network_interface_private_ip_addresses" {
  description = "The private IP addresses of the network interfaces"
  value       = { for key, nic in azurerm_network_interface.network_interface : key => nic.ip_configuration[0].private_ip_address }
}

output "network_interface_subnet_ids" {
  description = "The subnet IDs of the network interfaces"
  value       = { for key, nic in azurerm_network_interface.network_interface : key => nic.ip_configuration[0].subnet_id }
}

output "network_interface_location" {
  description = "The location of the network interfaces"
  value       = { for key, nic in azurerm_network_interface.network_interface : key => nic.location }
}

output "network_interface_tags" {
  description = "The tags of the network interfaces"
  value       = { for key, nic in azurerm_network_interface.network_interface : key => nic.tags }
}

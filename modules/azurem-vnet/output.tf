output "virtual_network_names" {
  description = "The names of the virtual networks"
  value       = { for key, vnet in azurerm_virtual_network.main : key => vnet.name }
}

output "virtual_network_ids" {
  description = "The IDs of the virtual networks"
  value       = { for key, vnet in azurerm_virtual_network.main : key => vnet.id }
}

output "virtual_network_address_spaces" {
  description = "The address spaces of the virtual networks"
  value       = { for key, vnet in azurerm_virtual_network.main : key => vnet.address_space }
}

output "virtual_network_location" {
  description = "The location of the virtual networks"
  value       = { for key, vnet in azurerm_virtual_network.main : key => vnet.location }
}
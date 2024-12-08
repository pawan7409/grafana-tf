output "subnet_names" {
  description = "The names of the subnets"
  value       = { for key, subnet in azurerm_subnet.subnets : key => subnet.name }
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = { for key, subnet in azurerm_subnet.subnets : key => subnet.id }
}

output "subnet_address_prefixes" {
  description = "The address prefixes of the subnets"
  value       = { for key, subnet in azurerm_subnet.subnets : key => subnet.address_prefix }
}

output "subnet_resource_group_names" {
  description = "The resource group names of the subnets"
  value       = { for key, subnet in azurerm_subnet.subnets : key => subnet.resource_group_name }
}

output "subnet_virtual_network_names" {
  description = "The virtual network names of the subnets"
  value       = { for key, subnet in azurerm_subnet.subnets : key => subnet.virtual_network_name }
}

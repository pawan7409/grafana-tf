output "network_security_group_name" {
  description = "The name of the Network Security Group"
  value       = azurerm_network_security_group.example.name
}

output "network_security_group_id" {
  description = "The ID of the Network Security Group"
  value       = azurerm_network_security_group.example.id
}

output "network_security_group_location" {
  description = "The location of the Network Security Group"
  value       = azurerm_network_security_group.example.location
}

output "network_security_group_resource_group" {
  description = "The resource group of the Network Security Group"
  value       = azurerm_network_security_group.example.resource_group_name
}

output "network_security_group_tags" {
  description = "The tags associated with the Network Security Group"
  value       = azurerm_network_security_group.example.tags
}

output "network_security_group_security_rules" {
  description = "The security rules defined in the Network Security Group"
  value       = azurerm_network_security_group.example.security_rule
}

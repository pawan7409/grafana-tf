output "public_ip_name" {
  description = "The name of the public IP"
  value       = azurerm_public_ip.example.name
}

output "public_ip_id" {
  description = "The ID of the public IP"
  value       = azurerm_public_ip.example.id
}

output "public_ip_address" {
  description = "The IP address of the public IP"
  value       = azurerm_public_ip.example.ip_address
}

output "public_ip_allocation_method" {
  description = "The allocation method of the public IP"
  value       = azurerm_public_ip.example.allocation_method
}

output "public_ip_location" {
  description = "The location of the public IP"
  value       = azurerm_public_ip.example.location
}

output "public_ip_tags" {
  description = "The tags associated with the public IP"
  value       = azurerm_public_ip.example.tags
}

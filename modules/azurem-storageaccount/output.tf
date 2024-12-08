output "storage_account_names" {
  description = "The names of the storage accounts"
  value       = { for key, storage_account in azurerm_storage_account.example : key => storage_account.name }
}

output "storage_account_ids" {
  description = "The IDs of the storage accounts"
  value       = { for key, storage_account in azurerm_storage_account.example : key => storage_account.id }
}

output "storage_account_primary_endpoints" {
  description = "The primary endpoints of the storage accounts"
  value       = { for key, storage_account in azurerm_storage_account.example : key => storage_account.primary_blob_endpoint }
}

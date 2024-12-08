resource "azurerm_virtual_network" "main" {
    for_each = var.virtual_network
  name                = "dev-grafana-vnet-westus"
  address_space       = ["10.0.0.0/16"]
  location            = "West US"
  resource_group_name = "dev-grafana-rg-westus"
}

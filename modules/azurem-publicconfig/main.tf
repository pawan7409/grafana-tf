resource "azurerm_public_ip" "public_ip_address" {
    for_each = var.publicconfig
  name                = "dev-grafana-pip-westus"
  location            = "West US"
  resource_group_name = "dev-grafana-rg-westus"
  allocation_method   = "Static"

  tags = {
    environment = "development"
  }
}
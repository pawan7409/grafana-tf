resource "azurerm_network_interface" "network_interface" {
  for_each            = var.network_interface
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.pipname
    subnet_id                     = data.azurerm_network_interface.interface[each.key].id
    private_ip_address_allocation = each.value.private_ip
    public_ip_address_id          = data.azurerm_public_ip.publicip[each.key].id
  }

  tags = {
    environment = "development"
  }
}

data "azurerm_network_interface" "interface" {
  for_each            = var.network_interface
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}
data "azurerm_public_ip" "publicip" {
  for_each            = var.network_interface
  name                = each.value.pipname
  resource_group_name = each.value.resource_group_name
}

# output "network_interface_id" {
#   value = "${data.azurerm_network_interface.example.id}"
# }

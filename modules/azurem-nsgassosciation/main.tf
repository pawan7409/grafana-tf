resource "azurerm_subnet_network_security_group_association" "nsgassocaition" {
    for_each = var.subnet_network_security_group_association
  subnet_id                 = data.azurerm_network_security_group.subnet[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg[each.key].id
}

data "azurerm_network_security_group" "nsg" {
    for_each = var.subnet_network_security_group_association
  name                = each.value.nsgname
  resource_group_name = each.value.resource_group_name
}

data "azurerm_subnet" "subnet" {
    for_each = var.subnet_network_security_group_association
  name                 = each.value.subnetname
  virtual_network_name = each.value.vnetname
  resource_group_name  = each.value.resource_group_name
}

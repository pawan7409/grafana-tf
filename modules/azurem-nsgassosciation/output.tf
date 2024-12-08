output "subnet_network_security_group_association" {
  value = {
    for key, assoc in azurerm_subnet_network_security_group_association.nsgassocaition :
    key => {
      subnet_id                 = assoc.subnet_id
      network_security_group_id = assoc.network_security_group_id
    }
  }
  description = "Details of the subnet and network security group associations."
}

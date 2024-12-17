module "azuurm-rg" {
  source = "../../modules/azurem-rg"
  rgs    = var.rgs

}

module "azurem-storageaccount" {
  depends_on      = [var.rgs]
  source          = "../../modules/azurem-storageaccount"
  storage_account = var.storage_account


}
module "virtual_network" {
  depends_on      = [var.rgs]
  source          = "../../modules/azurem-vnet"
  virtual_network = var.virtual_network

}
module "subnet" {
  depends_on = [var.rgs]
  source     = "../../modules/azurem-subnet"
  subnet     = var.subnet

}
module "public_ip_address" {
  depends_on   = [var.rgs]
  source       = "../../modules/azurem-publicconfig"
  publicconfig = var.publiconfig

}
module "network_interface" {
  depends_on        = [var.rgs]
  source            = "../../modules/azurem-interface"
  network_interface = var.network_interface

}

module "network_security_group" {
  depends_on             = [var.rgs]
  source                 = "../../modules/azurem-network_secruity_group"
  network_security_group = var.network_security_group
  security_rule = var.security_rule

}
module "nametwork_security_group_association" {
  depends_on                                = [var.rgs]
  source                                    = "../../modules/azurem-nsgassosciation"
  subnet_network_security_group_association = var.subnet_network_security_group_association
}

variable "rgs" {
  type = map(any)
  default = {
    "dev-grafana-rg-westus" = "West US"
  }

  
}

variable "storage_account" {
  description = "Map of storage accounts with their configurations"
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = map(string)
  }))

}

variable "virtual_network" {
    description = "Map of virtual networks with their configurations"
    type = map(object({
        name                = string
        address_space       = list(string)
        location            = string
        resource_group_name = string
    }))
  
}
variable "subnet" {
  description = "Map of subnets with their configurations"
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefix       = string
  }))
  
}
variable "network_interface" {
    description = "Map of network interfaces with their configurations"
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
    }))
  
}
variable "publiconfig" {
    description = "Map of public configurations with their configurations"
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
    }))
  
}
variable "network_security_group" {
    description = "Map of network security groups with their configurations"
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
    }))
  
}
variable "security_rule" {
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  
}
variable "subnet_network_security_group_association" {
    description = "Map of subnet network security group association with their configurations"
    type = map(object({
        subnet_id                 = string
        network_security_group_id = string  
    }))
}
variable "virtual_machine" {
    description = "Map of virtual machines with their configurations"
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
    }))
  
}
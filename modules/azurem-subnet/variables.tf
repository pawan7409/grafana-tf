variable "subnet" {
  description = "Map of subnets with their configurations"
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefix       = string
  }))
  
}
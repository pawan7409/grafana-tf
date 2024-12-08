variable "virtual_network" {
    description = "Map of virtual networks with their configurations"
    type = map(object({
        name                = string
        address_space       = list(string)
        location            = string
        resource_group_name = string
    }))
  
}
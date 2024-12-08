variable "network_interface" {
    description = "Map of network interfaces with their configurations"
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
    }))
  
}
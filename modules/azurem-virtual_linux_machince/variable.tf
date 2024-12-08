variable "virtual_machine" {
    description = "Map of virtual machines with their configurations"
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
    }))
  
}
variable "publicconfig" {
    description = "Map of public configurations with their configurations"
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
    }))
  
}
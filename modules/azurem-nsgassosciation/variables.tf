variable "subnet_network_security_group_association" {
    description = "Map of subnet network security group association with their configurations"
    type = map(object({
        subnet_id                 = string
        network_security_group_id = string  
    }))
}
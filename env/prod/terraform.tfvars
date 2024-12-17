rgs = {
  prod-grafana-rg-westus = {
  location = "West US" }
}

storage_account = {
  prod-grafana-storageacount-westus = {
    resource_group_name      = "prod-grafana-rg-westus"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
virtual_network = {
  "prod-grafana-vnet-westus" = {
    name                = "prod-grafana-vnet-westus"
    address_space       = ["10.0.0.0/16"]
    location            = "West US"
    resource_group_name = "prod-grafana-rg-westus"


  }
}

subnet = {
  prod-grafana-subnet-westus = {
    name                 = "prod-grafana-subnet-westus"
    resource_group_name  = "prod-grafana-rg-westus"
    virtual_network_name = "prod-grafana-vnet-westus"
    address_prefixes     = "10.0.1.0/24"
  }
}

network_interface = {
  prod-grafana-nic-westus = {
    name                          = "prod-grafana-nic-westus"
    location                      = "West US"
    resource_group_name           = "prod-grafana-rg-westus"
    pipname                       = "prod-grafana-publicip-westus"
    private_ip_address_allocation = "Dynamic"
  }
}
publiconfig = {
  prod-grafana-pip-westus = {
    name                = "prod-grafana-pip-westus"
    location            = "West US"
    resource_group_name = "prod-grafana-rg-westus"
    allocation_method   = "Static"
  }
}
network_security_group = {
  "prod-grafana-nsg-westus" = {
    name                = "prod-grafana-nsg-westus"
    location            = "westus"
    resource_group_name = "prod-grafana-rg-westus"

  }
}
security_rule = {
  "prod-grafana-rule1-westus" = {
    name                       = "prod-grafana-rule1-westus"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}

subnet_network_security_group_association = {
  prod-grafana-nsgassocaition-westus = {
    nsgname              = "prod-grafana-nsg-westus"
    resource_group_name  = "prod-grafana-rg-westus"
    subnetname           = "prod-grafana-subnet-westus"
    virtual_network_name = "prod-grafana-vnet-westus"

  }
}

virtual_machine = {
  "prod-grafana-frontendvm01-westus" = {
    name                = "prod-grafana-frontendvm01-westus"
    resource_group_name = "prod-grafana-rg-westus"
    location            = "westus"
    admin_username      = "frontenvm01"
    admin_password      = "Password1234"
    size                = "Standard_F2"
    nicname             = "prod-grafana-nic-westus"



  }
}

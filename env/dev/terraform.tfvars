rgs = {
  dev-grafana-rg-westus = {
  location = "West US" }
}

storage_account = {
  dev-grafana-storageacount-westus = {
    resource_group_name      = "dev-grafana-rg-westus"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
virtual_network = {
  "dev-grafana-vnet-westus" = {
    name                = "dev-grafana-vnet-westus"
    address_space       = ["10.0.0.0/16"]
    location            = "West US"
    resource_group_name = "dev-grafana-rg-westus"


  }
}

subnet = {
  dev-grafana-subnet-westus = {
    name                 = "dev-grafana-subnet-westus"
    resource_group_name  = "dev-grafana-rg-westus"
    virtual_network_name = "dev-grafana-vnet-westus"
    address_prefixes     = "10.0.1.0/24"
  }
}

network_interface = {
  dev-grafana-nic-westus = {
    name                          = "dev-grafana-nic-westus"
    location                      = "West US"
    resource_group_name           = "dev-grafana-rg-westus"
    pipname                       = "dev-grafana-publicip-westus"
    private_ip_address_allocation = "Dynamic"
  }
}
publiconfig = {
  dev-grafana-pip-westus = {
    name                = "dev-grafana-pip-westus"
    location            = "West US"
    resource_group_name = "dev-grafana-rg-westus"
    allocation_method   = "Static"
  }
}
network_security_group = {
  "dev-grafana-nsg-westus" = {
    name                = "dev-grafana-nsg-westus"
    location            = "westus"
    resource_group_name = "dev-grafana-rg-westus"

  }
}
security_rule = {
  "dev-grafana-rule1-westus" = {
    name                       = "dev-grafana-rule1-westus"
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
  dev-grafana-nsgassocaition-westus = {
    nsgname              = "dev-grafana-nsg-westus"
    resource_group_name  = "dev-grafana-rg-westus"
    subnetname           = "dev-grafana-subnet-westus"
    virtual_network_name = "dev-grafana-vnet-westus"

  }
}

virtual_machine = {
  "dev-grafana-frontendvm01-westus" = {
    name                = "dev-grafana-frontendvm01-westus"
    resource_group_name = "dev-grafana-rg-westus"
    location            = "westus"
    admin_username      = "frontenvm01"
    admin_password      = "Password1234"
    size                = "Standard_F2"
    nicname             = "dev-grafana-nic-westus"



  }
}

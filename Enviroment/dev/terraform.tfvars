infrarg = {
  "rg" = {
    rg_name  = "mupr-rg-infra"
    location = "centralindia"
    
  }
}
infranet = {
  "vnet" = {
    rg_name         = "mupr-rg-infra"
    location        = "centralindia"
    vnet_name       = "mupr-vnet"
    address_space   = ["10.0.0.0/16"]
    dns_servers     = ["10.0.0.4", "10.0.0.5"]
subnet_name = [
       {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}
database = {
  "sqldb" = {
    rg_name       = "mupr-rg-infra"
    location      = "centralindia"
    database_name = "mupr-sqldb"
    server_id     = "/subscriptions/02fc6674-9e4d-4764-8702-0c4550e06df7/resourceGroups/mupr-rg-infra/providers/Microsoft.Sql/servers/sqlserverinfamupr"
    collation     = "SQL_Latin1_General_CP1_CI_AS"
    license_type  = "LicenseIncluded"
  }
}
server = {
  "sqlserver" = {
    rg_name        = "mupr-rg-infra"
    location       = "centralindia"
    server_name    = "sqlserverinfamupr"
    version        = "12.0"
    admin_username = "sqladminuser"
    admin_password = "YourStrongP@ssw0rd!"
  }
}
pip = {
  "publicip" = {
    rg_name           = "mupr-rg-infra"
    location          = "centralindia"
    public_ip_name    = "mupr-public-ip"
    allocation_method = "Static"
  }
}
nic = {
  "nic1" = {
    nic_name             = "mupr-nic-1"
    location             = "centralindia"
    rg_name              = "mupr-rg-infra"
    ip_config_name       = "testconfiguration1"
    subnet_id            = "/subscriptions/02fc6674-9e4d-4764-8702-0c4550e06df7/resourceGroups/mupr-rg-infra/providers/Microsoft.Network/virtualNetworks/mupr-vnet/subnets/frontend-subnet"
    private_ip_allocation = "Dynamic"
  }
}
vms = {
  "vm1" = {
    vm_name              = "mupr-vm-1"
    rg_name              = "mupr-rg-infra"
    location             = "centralindia"
    vm_size              = "Standard_B1s"
    admin_username       = "vmadminuser"
    admin_password = "mupuvm@1234"
    network_interface_id = "/subscriptions/02fc6674-9e4d-4764-8702-0c4550e06df7/resourceGroups/mupr-rg-infra/providers/Microsoft.Network/networkInterfaces/mupr-nic-1"
  }
}


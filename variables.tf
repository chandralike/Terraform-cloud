variable "subscription_id"{
type=string
description = "This is the subscription id"
}

variable "tenant_id"{
type=string
description = "This is the tenant id"
}

variable "client_id"{
type=string
description = "This is the client id"
}

variable "client_secret"{
type=string
description = "This is the client secret"
}
resource "azurerm_subnet" "subnetA" {    
    name                 = "SubnetA"
    resource_group_name  = azurerm_resource_group.resourcegrp.name
    virtual_network_name = azurerm_virtual_network.network.name
    address_prefixes     = [cidrsubnet(local.virtual_network.address_space,8,2)]
    depends_on = [
      azurerm_virtual_network.network
    ]
}

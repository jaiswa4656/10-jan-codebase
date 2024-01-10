data "azurerm_resource_group" "RG" {
  name = "Pradeep-RG"
}

data "azurerm_subnet" "subnet" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = "testvnet"
  resource_group_name  = data.azurerm_resource_group.RG.name
}

data "azurerm_public_ip" "pip" {
  name                = "Bastion-pip"
  resource_group_name = data.azurerm_resource_group.RG.name
}
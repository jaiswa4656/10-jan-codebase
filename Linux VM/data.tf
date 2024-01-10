data "azurerm_resource_group" "RG" {
  name = "Pradeep-RG"
}

data "azurerm_subnet" "subnet" {
  name                 = "fsub"
  virtual_network_name = "testvnet"
  resource_group_name  = data.azurerm_resource_group.RG.name
}

data "azurerm_resource_group" "RG" {
  name = "Pradeep-RG"
}

data "azurerm_public_ip" "pip" {
  name                = "LB_PIP"
  resource_group_name = data.azurerm_resource_group.RG.name
}
data "azurerm_virtual_network" "vnet" {
  name                = "testvnet"
  resource_group_name = "Pradeep-RG"
}

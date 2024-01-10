resource "azurerm_bastion_host" "example" {
  name                = "todobastion"
  location            = "centralindia"
  resource_group_name = data.azurerm_resource_group.RG.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.subnet.id
    public_ip_address_id = data.azurerm_public_ip.pip.id
  }
}
resource "azurerm_public_ip" "example" {
  for_each            = var.pip
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.RG.name
  location            = each.value.location
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = each.value.tags
}


resource "azurerm_virtual_network" "example" {
  for_each            = var.VNET
  name                = each.value.name
  location            = each.value.location
  resource_group_name = data.azurerm_resource_group.RG.name
  address_space       = each.value.address_space

  dynamic "subnet" {
    for_each = var.sub
    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefix
    }
  }
}

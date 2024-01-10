resource "azurerm_resource_group" "RG" {
  for_each = var.RG
  name     = each.value.name
  location = each.value.location
  tags     = each.value.tags
}

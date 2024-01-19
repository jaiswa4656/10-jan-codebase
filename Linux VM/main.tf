resource "azurerm_network_interface" "nic" {
  for_each            = var.LinVM
  name                = each.value.nicname
  location            = each.value.location
  resource_group_name = data.azurerm_resource_group.RG.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "example" {
  for_each            = var.LinVM
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.RG.name
  location            = each.value.location
  size                = each.value.size
  admin_username      = "admin01"
  admin_password      = "Admin@123456"
  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id,
  ]

  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}



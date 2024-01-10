resource "azurerm_lb" "LB" {
  name                = "TodoloadBalancer"
  location            = "centralindia"
  resource_group_name = data.azurerm_resource_group.RG.name
  sku                 = "Standard"
  sku_tier            = "Regional"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = data.azurerm_public_ip.pip.id
  }
}
resource "azurerm_lb_backend_address_pool" "backendpool" {
  loadbalancer_id = azurerm_lb.LB.id
  name            = "BackEndAddressPool"
}
resource "azurerm_lb_probe" "Probe" {
  loadbalancer_id     = azurerm_lb.LB.id
  name                = "H1"
  port                = 80
  interval_in_seconds = "5"
}
resource "azurerm_lb_rule" "example" {
  loadbalancer_id                = azurerm_lb.LB.id
  name                           = "LBRule"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "PublicIPAddress"
  probe_id                       = azurerm_lb_probe.Probe.id
  backend_address_pool_ids = [azurerm_lb_backend_address_pool.backendpool.id]
}
resource "azurerm_lb_backend_address_pool_address" "example" {
  name                    = "FVM"
  backend_address_pool_id = azurerm_lb_backend_address_pool.backendpool.id
  virtual_network_id      = data.azurerm_virtual_network.vnet.id
  ip_address              = "10.0.1.6"
}
resource "azurerm_lb_backend_address_pool_address" "example1" {
  name                    = "FVM1"
  backend_address_pool_id = azurerm_lb_backend_address_pool.backendpool.id
  virtual_network_id      = data.azurerm_virtual_network.vnet.id
  ip_address              = "10.0.1.5"
}
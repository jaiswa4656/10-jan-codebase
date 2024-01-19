resource "azurerm_mssql_server" "example" {
  name                         = "todosqlserver1924"
  resource_group_name          = "Pradeep-RG"
  location                     = "Centralindia"
  version                      = "12.0"
  administrator_login          = "admin01"
  administrator_login_password = "Admin@123456"
}
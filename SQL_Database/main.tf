resource "azurerm_sql_database" "example" {
  name                = "todosqldb"
  resource_group_name = "Pradeep-RG"
  location            = "centralindia"
  server_name         = "todosqlserver"
}
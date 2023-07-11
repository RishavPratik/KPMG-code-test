# Create Azure SQL Database for the data layer
resource "azurerm_sql_server" "database_server" {
  name                         = "database-server"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = "password123"
}

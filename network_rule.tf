# Create Azure Virtual Network Rule to allow access from app tier
resource "azurerm_sql_virtual_network_rule" "app_network_rule" {
  name                = "app-network-rule"
  server_name         = azurerm_sql_server.database_server.name
  resource_group_name = azurerm_resource_group.example_rg.name
  subnet_id           = azurerm_subnet.app_subnet.id
}

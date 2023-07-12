# Configure database connection string in the application tier
resource "azurerm_virtual_machine_extension" "app_db_connection" {
  name                 = "app-db-connection"
  virtual_machine_id   = azurerm_virtual_machine.app_instances[0].id
  resource_group_name  = azurerm_resource_group.example_rg.name
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"

  settings = <<SETTINGS
    {
        "commandToExecute": "echo 'export DB_CONNECTION_STRING=<YOUR_DATABASE_CONNECTION_STRING>' >> /etc/environment"
    }
  SETTINGS
}

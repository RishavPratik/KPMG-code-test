# Create Azure Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"  # Update with your desired region
  resource_group_name = azurerm_resource_group.example_rg.name
}

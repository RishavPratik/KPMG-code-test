# Create resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "East US"  # Update with your desired location
}

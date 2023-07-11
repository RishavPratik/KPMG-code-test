# Create Azure Load Balancer for web tier
resource "azurerm_lb" "web_lb" {
  name                = "web-lb"
  location            = "eastus"  # Update with your desired region
  resource_group_name = azurerm_resource_group.example_rg.name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.web_lb_public_ip.id
  }
}

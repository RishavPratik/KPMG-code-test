# Create Azure Virtual Machines for web tier
resource "azurerm_virtual_machine" "web_instances" {
  name                  = web-machine
  location              = "eastus"  # Update with your desired region
  resource_group_name   = azurerm_resource_group.example_rg.name
  network_interface_ids = [azurerm_network_interface.web_nic.id]
  vm_size               = "Standard_D4as"  # Update with your desired VM size
  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "20.04-LTS"
    version   = "latest"
  }
}

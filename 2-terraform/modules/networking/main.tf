# Reusable Networking Module (Azure example)
# Can be adapted for GCP with google_compute_network

resource "azurerm_virtual_network" "main" {
  name                = "${var.project_name}-${var.environment}-vnet"
  address_space       = [var.vnet_cidr]
  location            = var.location
  resource_group_name = var.resource_group

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_subnet" "app" {
  name                 = "${var.project_name}-${var.environment}-app-subnet"
  resource_group_name  = var.resource_group
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [var.subnet_cidr]
}

output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "subnet_id" {
  value = azurerm_subnet.app.id
}

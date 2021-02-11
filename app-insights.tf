provider "azurerm" {
  version = "=2.46.1"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "tf-test"
  location = var.location
}

resource "azurerm_application_insights" "example" {
  name                = var.application_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  application_type    = "web"
}

output "instrumentation_key" {
  value = azurerm_application_insights.example.instrumentation_key
}

output "app_id" {
  value = azurerm_application_insights.example.app_id
}
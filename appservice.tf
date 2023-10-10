
resource "azurerm_service_plan" "testsatyaphp1234" {
  name                = "testsatyaphp1234"
  resource_group_name = local.resource_group_name
  location            = local.location
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "testsatyaphp1234" {
  name                = "testsatyaphp1234"
  resource_group_name = local.resource_group_name
  location            = local.location
  service_plan_id     = azurerm_service_plan.testsatyaphp1234.id

  site_config {

    always_on                 = true
    application_stack{

        php_version = 8.0
        
    }
    
  }
}
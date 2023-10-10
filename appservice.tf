
resource "azurerm_service_plan" "testsatyaphp12346" {
  name                = "testsatyaphp12346"
  resource_group_name = local.resource_group_name
  location            = local.location
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "testsatyaphp12346" {
  name                = "testsatyaphp12346"
  resource_group_name = local.resource_group_name
  location            = local.location
  service_plan_id     = azurerm_service_plan.testsatyaphp12346.id

  site_config {

    always_on                 = true
    application_stack{

        php_version = "8.0"

    }
    
  }
}


resource "azurerm_app_service_source_control" "testsatyaphp12346" {
  app_id   = azurerm_linux_web_app.testsatyaphp12346.id
  repo_url = "https://github.com/Azure-Samples/php-docs-hello-world"
  branch   = "master"
}

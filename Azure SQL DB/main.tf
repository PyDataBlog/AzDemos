resource "azurerm_resource_group" "db-rg" {
    name     = var.resource_group_name
    location = var.resource_group_location
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.db-rg.name
  location                 = azurerm_resource_group.db-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_mssql_server" "mssqlserver" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.db-rg.name
  location                     = azurerm_resource_group.db-rg.location
  version                      = var.sql_server_version
  administrator_login          = var.sql_server_admin_username
  administrator_login_password = var.sql_server_admin_password
}

resource "azurerm_mssql_firewall_rule" "mssqlserverfirewallrule" {
  name                = "AllowAllAzureIps"
  server_id           = azurerm_mssql_server.mssqlserver.id
# Note that this is an example and not recommended for production use,
# as it opens the SQL server to connections from all IP addresses, including potentially malicious ones.
  start_ip_address    = var.sql_server_start_ip_address
  end_ip_address      = var.sql_server_end_ip_address
}

resource "azurerm_mssql_database" "mssqldb" {
  name           = "mysqldb-mssql"
  server_id      = azurerm_mssql_server.mssqlserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
#   license_type   = "LicenseIncluded"
  max_size_gb    = 250
#   read_scale     = true
  sku_name       = "S0"
#   zone_redundant = false
  # sample_name    = "AdventureWorksLT"

  tags = {
    Environment = "Test"
  }
}

output "sqlserver_name" {
  value = azurerm_mssql_server.mssqlserver.name
}

output "sqlserver_fqdn" {
  value = azurerm_mssql_server.mssqlserver.fully_qualified_domain_name
}

output "sqlserver_admin_username" {
  value = azurerm_mssql_server.mssqlserver.administrator_login
}

output "sqlserver_admin_password" {
  value = azurerm_mssql_server.mssqlserver.administrator_login_password
  sensitive = true
}

output "db_storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "db_admin_username" {
  value = azurerm_mssql_server.mssqlserver.administrator_login
}

output "db_login_password" {
  value = azurerm_mssql_server.mssqlserver.administrator_login_password
  sensitive = true
}

output "resource_group_name" {
  description = "Name of the created resource group."
  value       = azurerm_resource_group.main.name
}

output "container_registry_name" {
  description = "Name of the Azure Container Registry."
  value       = azurerm_container_registry.main.name
}

output "container_app_environment_name" {
  description = "Name of the Container Apps Environment."
  value       = azurerm_container_app_environment.main.name
}

output "container_app_name" {
  description = "Name of the Azure Container App."
  value       = azurerm_container_app.main.name
}

output "container_app_url" {
  description = "Public URL of the Azure Container App."
  value       = "https://${azurerm_container_app.main.latest_revision_fqdn}"
}

output "managed_identity_name" {
  description = "Name of the managed identity used by the Container App."
  value       = azurerm_user_assigned_identity.container_app.name
}

output "log_analytics_workspace_name" {
  description = "Name of the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.main.name
}

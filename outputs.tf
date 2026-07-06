output "api_management_global_schemas" {
  description = "All api_management_global_schema resources"
  value       = azurerm_api_management_global_schema.api_management_global_schemas
}
output "api_management_global_schemas_api_management_name" {
  description = "List of api_management_name values across all api_management_global_schemas"
  value       = [for k, v in azurerm_api_management_global_schema.api_management_global_schemas : v.api_management_name]
}
output "api_management_global_schemas_description" {
  description = "List of description values across all api_management_global_schemas"
  value       = [for k, v in azurerm_api_management_global_schema.api_management_global_schemas : v.description]
}
output "api_management_global_schemas_resource_group_name" {
  description = "List of resource_group_name values across all api_management_global_schemas"
  value       = [for k, v in azurerm_api_management_global_schema.api_management_global_schemas : v.resource_group_name]
}
output "api_management_global_schemas_schema_id" {
  description = "List of schema_id values across all api_management_global_schemas"
  value       = [for k, v in azurerm_api_management_global_schema.api_management_global_schemas : v.schema_id]
}
output "api_management_global_schemas_type" {
  description = "List of type values across all api_management_global_schemas"
  value       = [for k, v in azurerm_api_management_global_schema.api_management_global_schemas : v.type]
}
output "api_management_global_schemas_value" {
  description = "List of value values across all api_management_global_schemas"
  value       = [for k, v in azurerm_api_management_global_schema.api_management_global_schemas : v.value]
}


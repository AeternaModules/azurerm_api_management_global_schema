output "api_management_global_schemas_id" {
  description = "Map of id values across all api_management_global_schemas, keyed the same as var.api_management_global_schemas"
  value       = { for k, v in azurerm_api_management_global_schema.api_management_global_schemas : k => v.id }
}
output "api_management_global_schemas_api_management_name" {
  description = "Map of api_management_name values across all api_management_global_schemas, keyed the same as var.api_management_global_schemas"
  value       = { for k, v in azurerm_api_management_global_schema.api_management_global_schemas : k => v.api_management_name }
}
output "api_management_global_schemas_description" {
  description = "Map of description values across all api_management_global_schemas, keyed the same as var.api_management_global_schemas"
  value       = { for k, v in azurerm_api_management_global_schema.api_management_global_schemas : k => v.description }
}
output "api_management_global_schemas_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_global_schemas, keyed the same as var.api_management_global_schemas"
  value       = { for k, v in azurerm_api_management_global_schema.api_management_global_schemas : k => v.resource_group_name }
}
output "api_management_global_schemas_schema_id" {
  description = "Map of schema_id values across all api_management_global_schemas, keyed the same as var.api_management_global_schemas"
  value       = { for k, v in azurerm_api_management_global_schema.api_management_global_schemas : k => v.schema_id }
}
output "api_management_global_schemas_type" {
  description = "Map of type values across all api_management_global_schemas, keyed the same as var.api_management_global_schemas"
  value       = { for k, v in azurerm_api_management_global_schema.api_management_global_schemas : k => v.type }
}
output "api_management_global_schemas_value" {
  description = "Map of value values across all api_management_global_schemas, keyed the same as var.api_management_global_schemas"
  value       = { for k, v in azurerm_api_management_global_schema.api_management_global_schemas : k => v.value }
}


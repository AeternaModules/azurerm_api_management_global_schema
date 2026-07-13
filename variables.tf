variable "api_management_global_schemas" {
  description = <<EOT
Map of api_management_global_schemas, attributes below
Required:
    - api_management_name
    - resource_group_name
    - schema_id
    - type
    - value
Optional:
    - description
EOT

  type = map(object({
    api_management_name = string
    resource_group_name = string
    schema_id           = string
    type                = string
    value               = string
    description         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_global_schemas : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_global_schemas : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_global_schemas : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_global_schemas : (
        length(v.value) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_global_schemas : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


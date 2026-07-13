variable "eventgrid_system_topics" {
  description = <<EOT
Map of eventgrid_system_topics, attributes below
Required:
    - location
    - name
    - resource_group_name
    - topic_type
Optional:
    - source_arm_resource_id
    - source_resource_id
    - tags
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    location               = string
    name                   = string
    resource_group_name    = string
    topic_type             = string
    source_arm_resource_id = optional(string)
    source_resource_id     = optional(string)
    tags                   = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topics : (
        (length(v.name) > 0) && (can(regex("^[-a-zA-Z0-9]{3,128}$", v.name)))
      )
    ])
    error_message = "all of: must not be empty; EventGrid Topics name must be 3 - 128 characters long, contain only letters, numbers and hyphens."
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topics : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topics : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topics : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topics : (
        length(v.topic_type) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topics : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


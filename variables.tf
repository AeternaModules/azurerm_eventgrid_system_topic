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
}


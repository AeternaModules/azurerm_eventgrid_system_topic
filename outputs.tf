output "eventgrid_system_topics_id" {
  description = "Map of id values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eventgrid_system_topics_identity" {
  description = "Map of identity values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "eventgrid_system_topics_location" {
  description = "Map of location values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.location if v.location != null && length(v.location) > 0 }
}
output "eventgrid_system_topics_metric_arm_resource_id" {
  description = "Map of metric_arm_resource_id values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.metric_arm_resource_id if v.metric_arm_resource_id != null && length(v.metric_arm_resource_id) > 0 }
}
output "eventgrid_system_topics_metric_resource_id" {
  description = "Map of metric_resource_id values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.metric_resource_id if v.metric_resource_id != null && length(v.metric_resource_id) > 0 }
}
output "eventgrid_system_topics_name" {
  description = "Map of name values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.name if v.name != null && length(v.name) > 0 }
}
output "eventgrid_system_topics_resource_group_name" {
  description = "Map of resource_group_name values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "eventgrid_system_topics_source_arm_resource_id" {
  description = "Map of source_arm_resource_id values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.source_arm_resource_id if v.source_arm_resource_id != null && length(v.source_arm_resource_id) > 0 }
}
output "eventgrid_system_topics_source_resource_id" {
  description = "Map of source_resource_id values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.source_resource_id if v.source_resource_id != null && length(v.source_resource_id) > 0 }
}
output "eventgrid_system_topics_tags" {
  description = "Map of tags values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "eventgrid_system_topics_topic_type" {
  description = "Map of topic_type values across all eventgrid_system_topics, keyed the same as var.eventgrid_system_topics"
  value       = { for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : k => v.topic_type if v.topic_type != null && length(v.topic_type) > 0 }
}


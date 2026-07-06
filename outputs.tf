output "eventgrid_system_topics" {
  description = "All eventgrid_system_topic resources"
  value       = azurerm_eventgrid_system_topic.eventgrid_system_topics
}
output "eventgrid_system_topics_identity" {
  description = "List of identity values across all eventgrid_system_topics"
  value       = [for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : v.identity]
}
output "eventgrid_system_topics_location" {
  description = "List of location values across all eventgrid_system_topics"
  value       = [for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : v.location]
}
output "eventgrid_system_topics_metric_arm_resource_id" {
  description = "List of metric_arm_resource_id values across all eventgrid_system_topics"
  value       = [for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : v.metric_arm_resource_id]
}
output "eventgrid_system_topics_metric_resource_id" {
  description = "List of metric_resource_id values across all eventgrid_system_topics"
  value       = [for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : v.metric_resource_id]
}
output "eventgrid_system_topics_name" {
  description = "List of name values across all eventgrid_system_topics"
  value       = [for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : v.name]
}
output "eventgrid_system_topics_resource_group_name" {
  description = "List of resource_group_name values across all eventgrid_system_topics"
  value       = [for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : v.resource_group_name]
}
output "eventgrid_system_topics_source_arm_resource_id" {
  description = "List of source_arm_resource_id values across all eventgrid_system_topics"
  value       = [for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : v.source_arm_resource_id]
}
output "eventgrid_system_topics_source_resource_id" {
  description = "List of source_resource_id values across all eventgrid_system_topics"
  value       = [for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : v.source_resource_id]
}
output "eventgrid_system_topics_tags" {
  description = "List of tags values across all eventgrid_system_topics"
  value       = [for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : v.tags]
}
output "eventgrid_system_topics_topic_type" {
  description = "List of topic_type values across all eventgrid_system_topics"
  value       = [for k, v in azurerm_eventgrid_system_topic.eventgrid_system_topics : v.topic_type]
}


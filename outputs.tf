output "kibana_data_views_id" {
  description = "Map of id values across all kibana_data_views, keyed the same as var.kibana_data_views except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_data_view.kibana_data_views : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_data_views_data_view" {
  description = "Map of data_view values across all kibana_data_views, keyed the same as var.kibana_data_views except keys with no data_view are omitted"
  value       = { for k, v in elasticstack_kibana_data_view.kibana_data_views : k => v.data_view if v.data_view != null && length(v.data_view) > 0 }
}
output "kibana_data_views_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_data_views, keyed the same as var.kibana_data_views except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_data_view.kibana_data_views : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_data_views_override" {
  description = "Map of override values across all kibana_data_views, keyed the same as var.kibana_data_views except keys with no override are omitted"
  value       = { for k, v in elasticstack_kibana_data_view.kibana_data_views : k => v.override if v.override != null }
}
output "kibana_data_views_space_id" {
  description = "Map of space_id values across all kibana_data_views, keyed the same as var.kibana_data_views except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_data_view.kibana_data_views : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}


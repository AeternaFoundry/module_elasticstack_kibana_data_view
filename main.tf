resource "elasticstack_kibana_data_view" "kibana_data_views" {
  for_each = var.kibana_data_views

  data_view = each.value.data_view
  override  = each.value.override
  space_id  = each.value.space_id
  timeouts  = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}


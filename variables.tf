variable "kibana_data_views" {
  description = <<EOT
Map of kibana_data_views, attributes below
Required:
    - data_view
Optional:
    - override
    - space_id
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    data_view = object({
      allow_no_index = optional(bool)
      field_attrs = optional(map(object({
        count        = optional(number)
        custom_label = optional(string)
      })))
      field_formats = optional(map(object({
        id = string
        params = optional(object({
          colors = optional(list(object({
            background = optional(string)
            range      = optional(string)
            regex      = optional(string)
            text       = optional(string)
          })))
          field_length              = optional(number)
          field_type                = optional(string)
          height                    = optional(number)
          include_space_with_suffix = optional(bool)
          input_format              = optional(string)
          labeltemplate             = optional(string)
          lookup_entries = optional(list(object({
            key   = string
            value = string
          })))
          output_format     = optional(string)
          output_precision  = optional(number)
          pattern           = optional(string)
          timezone          = optional(string)
          transform         = optional(string)
          type              = optional(string)
          unknown_key_value = optional(string)
          urltemplate       = optional(string)
          use_short_suffix  = optional(bool)
          width             = optional(number)
        }))
      })))
      id         = optional(string)
      name       = optional(string)
      namespaces = optional(list(string))
      runtime_field_map = optional(map(object({
        script_source = string
        type          = string
      })))
      source_filters  = optional(list(string))
      time_field_name = optional(string)
      title           = string
    })
    override = optional(bool)
    space_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}


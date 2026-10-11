variable "ldap_configurations" {
  description = <<EOT
Map of ldap_configurations, attributes below
Required:
    - authentication_enabled
    - bind_password
    - bind_username
    - hostname
    - project_id
Optional:
    - authorization_enabled
    - authz_query_template
    - ca_certificate
    - port
    - user_to_dn_mapping (block):
        - ldap_query (optional)
        - match (optional)
        - substitution (optional)
EOT

  type = map(object({
    authentication_enabled = bool
    bind_password          = string
    bind_username          = string
    hostname               = string
    project_id             = string
    authorization_enabled  = optional(bool)
    authz_query_template   = optional(string)
    ca_certificate         = optional(string)
    port                   = optional(number)
    user_to_dn_mapping = optional(list(object({
      ldap_query   = optional(string)
      match        = optional(string)
      substitution = optional(string)
    })))
  }))
}


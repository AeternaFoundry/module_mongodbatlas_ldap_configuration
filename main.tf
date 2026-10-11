resource "mongodbatlas_ldap_configuration" "ldap_configurations" {
  for_each = var.ldap_configurations

  authentication_enabled = each.value.authentication_enabled
  bind_password          = each.value.bind_password
  bind_username          = each.value.bind_username
  hostname               = each.value.hostname
  project_id             = each.value.project_id
  authorization_enabled  = each.value.authorization_enabled
  authz_query_template   = each.value.authz_query_template
  ca_certificate         = each.value.ca_certificate
  port                   = each.value.port

  dynamic "user_to_dn_mapping" {
    for_each = each.value.user_to_dn_mapping != null ? each.value.user_to_dn_mapping : []
    content {
      ldap_query   = user_to_dn_mapping.value.ldap_query
      match        = user_to_dn_mapping.value.match
      substitution = user_to_dn_mapping.value.substitution
    }
  }
}


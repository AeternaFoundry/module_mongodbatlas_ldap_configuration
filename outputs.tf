output "ldap_configurations_id" {
  description = "Map of id values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ldap_configurations_authentication_enabled" {
  description = "Map of authentication_enabled values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no authentication_enabled are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.authentication_enabled if v.authentication_enabled != null }
}
output "ldap_configurations_authorization_enabled" {
  description = "Map of authorization_enabled values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no authorization_enabled are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.authorization_enabled if v.authorization_enabled != null }
}
output "ldap_configurations_authz_query_template" {
  description = "Map of authz_query_template values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no authz_query_template are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.authz_query_template if v.authz_query_template != null && length(v.authz_query_template) > 0 }
}
output "ldap_configurations_bind_password" {
  description = "Map of bind_password values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no bind_password are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.bind_password if v.bind_password != null && length(v.bind_password) > 0 }
  sensitive   = true
}
output "ldap_configurations_bind_username" {
  description = "Map of bind_username values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no bind_username are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.bind_username if v.bind_username != null && length(v.bind_username) > 0 }
}
output "ldap_configurations_ca_certificate" {
  description = "Map of ca_certificate values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no ca_certificate are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.ca_certificate if v.ca_certificate != null && length(v.ca_certificate) > 0 }
}
output "ldap_configurations_hostname" {
  description = "Map of hostname values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no hostname are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "ldap_configurations_port" {
  description = "Map of port values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no port are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.port if v.port != null }
}
output "ldap_configurations_project_id" {
  description = "Map of project_id values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "ldap_configurations_user_to_dn_mapping" {
  description = "Map of user_to_dn_mapping values across all ldap_configurations, keyed the same as var.ldap_configurations except keys with no user_to_dn_mapping are omitted"
  value       = { for k, v in mongodbatlas_ldap_configuration.ldap_configurations : k => v.user_to_dn_mapping if v.user_to_dn_mapping != null && length(v.user_to_dn_mapping) > 0 }
}


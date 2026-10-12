output "catalog_integrations_lookup_id" {
  description = "Map of id values across all catalog_integrations_lookup, keyed the same as var.catalog_integrations_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_catalog_integrations.catalog_integrations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "catalog_integrations_lookup_catalog_integrations" {
  description = "Map of catalog_integrations values across all catalog_integrations_lookup, keyed the same as var.catalog_integrations_lookup except keys with no catalog_integrations are omitted"
  value       = { for k, v in data.snowflake_catalog_integrations.catalog_integrations_lookup : k => v.catalog_integrations if v.catalog_integrations != null && length(v.catalog_integrations) > 0 }
}
output "catalog_integrations_lookup_like" {
  description = "Map of like values across all catalog_integrations_lookup, keyed the same as var.catalog_integrations_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_catalog_integrations.catalog_integrations_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "catalog_integrations_lookup_with_describe" {
  description = "Map of with_describe values across all catalog_integrations_lookup, keyed the same as var.catalog_integrations_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_catalog_integrations.catalog_integrations_lookup : k => v.with_describe if v.with_describe != null }
}


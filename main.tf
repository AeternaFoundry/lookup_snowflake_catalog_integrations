data "snowflake_catalog_integrations" "catalog_integrations_lookup" {
  for_each = var.catalog_integrations_lookup

  like          = each.value.like
  with_describe = each.value.with_describe
}


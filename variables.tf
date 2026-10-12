variable "catalog_integrations_lookup" {
  description = <<EOT
Map of catalog_integrations_lookup, attributes below
Optional:
    - like
    - with_describe
EOT

  type = map(object({
    like          = optional(string)
    with_describe = optional(bool)
  }))
}


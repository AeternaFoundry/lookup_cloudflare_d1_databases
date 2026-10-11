variable "d1_databases_lookup" {
  description = <<EOT
Map of d1_databases_lookup, attributes below
Optional:
    - account_id
    - max_items
    - name
EOT

  type = map(object({
    account_id = optional(string)
    max_items  = optional(number)
    name       = optional(string)
  }))
}


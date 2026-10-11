data "cloudflare_d1_databases" "d1_databases_lookup" {
  for_each = var.d1_databases_lookup

  account_id = each.value.account_id
  max_items  = each.value.max_items
  name       = each.value.name
}


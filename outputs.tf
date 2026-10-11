output "d1_databases_lookup_account_id" {
  description = "Map of account_id values across all d1_databases_lookup, keyed the same as var.d1_databases_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_d1_databases.d1_databases_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "d1_databases_lookup_max_items" {
  description = "Map of max_items values across all d1_databases_lookup, keyed the same as var.d1_databases_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_d1_databases.d1_databases_lookup : k => v.max_items if v.max_items != null }
}
output "d1_databases_lookup_name" {
  description = "Map of name values across all d1_databases_lookup, keyed the same as var.d1_databases_lookup except keys with no name are omitted"
  value       = { for k, v in data.cloudflare_d1_databases.d1_databases_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "d1_databases_lookup_result" {
  description = "Map of result values across all d1_databases_lookup, keyed the same as var.d1_databases_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_d1_databases.d1_databases_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}


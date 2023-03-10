terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "~> 3.40"
    }
  }
}
resource "okta_group_rule" "this" {
  for_each          = local.group_rules_map
  name              = each.value.name
  status            = "ACTIVE"
  group_assignments = each.value.group_assignments
  expression_type   = "urn:okta:expression:1.0"
  expression_value  = each.value.expression_value
}
locals{
  group_rules_map  = { for gr in var.group_rules : gr.name => gr }
}
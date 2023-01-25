resource "okta_group_rule" "this" {
  for_each         = var.group_rules
  name              = each.name
  status            = "ACTIVE"
  group_assignments = each.group_assignments
  expression_type   = "urn:okta:expression:1.0"
  expression_value  = each.expression_value
}
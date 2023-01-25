resource "okta_group_rule" "this" {
  name              = var.name
  status            = "ACTIVE"
  group_assignments = var.group_assignments
  expression_type   = "urn:okta:expression:1.0"
  expression_value  = var.expression_value
}
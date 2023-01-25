variable "group_rule" {
  type = object({
    name               = string
    status             = string
    expression_type    = string
    expression_value   = string
    group_assignments = list(string)
  })

  default = {
    name               = ""
    status             = "ACTIVE"
    expression_type    = "urn:okta:expression:1.0"
    expression_value   = ""
    group_assignments = []
  }
}
variable "group_rules" {
  type = list(object({
    name               = string
    status             = string
    expression_type    = string
    expression_value   = string
    group_assignments = list(string)
  }))

  default = []
}
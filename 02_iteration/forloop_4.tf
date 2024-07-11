variable "environment_tags" {
  type = list(list(string))
  default = [
    ["env:development", "team:devops"],
    ["env:staging", "priority:high"],
    ["env:production", "compliance:strict"]
  ]
}

# Flatten the nested lists into a single list
locals {
  flattened_tags = flatten(var.environment_tags)

  name_value_tags = 
    { env = "development", team = "devops" },
    { env = "staging", priority = "high" },
    { env = "production", compliance = "strict" }
  ]
}



output "name_value_tags" {
  value = local.flattened_tags
}

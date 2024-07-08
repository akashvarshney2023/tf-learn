


# Define variables for keys and values
variable "keys" {
  type    = list(string)
  default = ["name1", "name2", "name3"]
}

variable "values" {
  type    = list(string)
  default = ["value1", "value2", "value3"]
}

# Use zipmap to create a map from the keys and values
locals {
  mapped_values = zipmap(var.keys, var.values)
}

# Outputs to display the results
output "original_keys" {
  value = var.keys
}

output "original_values" {
  value = var.values
}

output "mapped_values" {
  value = local.mapped_values
}

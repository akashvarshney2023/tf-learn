variable "numeber_of_instances" {
  type    = list(number)
  default = [1, 2, 3, 4]

}


locals {

  # [for <item> in <collection>: <expression>]
  squre = [for num in var.numeber_of_instances : num * num + 1]
}

output "square_nnumbers" {
  value = local.squre

}

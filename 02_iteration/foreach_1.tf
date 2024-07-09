# variable "test_map" {
#   type = map(string)
#   default = {
#     "Akash"     = "India"
#     "Lee"       = "South Africa"
#     "Eric"      = "hk"
#     "Jaswinder" = "usa"
#   }
# }


# resource "test_resource" "map" {
#   for_each = var.test_map

#   name  = each.key
#   value = "${each.value}-Automation Enginer"
# }

# # output "resource_values" {
# #   value = { for r in test_resource.map : r.name => r.value }
# # }

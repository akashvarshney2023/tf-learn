# # Define variables with nested lists
# variable "nested_lists" {
#   type = list(list(string))
#   default = [
#     ["one", "two"],
#     ["three", "four"],
#     ["five", "six"]
#   ]
# }

# variable "nested_lists_of_list" {
#   type = list(list(list(string)))
#   default = [
#     [
#       ["Laptop", "Mobile"],
#       ["Desktop", "playstation"]
#     ],
#     [
#       ["test1", "test2"],
#       ["Pen", "Pencil"]
#     ]
#   ]
# }

# # Use flatten to convert nested lists into a single list
# locals {
#   flattened_lists = flatten(var.nested_lists)
#   flattened_more_nested_lists = flatten(flatten(var.nested_lists_of_list))
# }

# # Outputs to display the results
# output "original_nested_lists" {
#   value = var.nested_lists
# }

# output "flattened_lists" {
#   value = local.flattened_lists
# }

# output "original_more_nested_lists" {
#   value = var.nested_lists_of_list
# }

# output "flattened_more_nested_lists" {
#   value = local.flattened_more_nested_lists
# }

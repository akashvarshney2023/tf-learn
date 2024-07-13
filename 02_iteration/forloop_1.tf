## Used for iterating over lists and maps.

variable "regions_list" {
  type    = list(string)
  default = ["eastus", "canda", "india"]

}

variable "count_details" {
  type = map(number)
  default = {
    # details_key    # details_value
    "resource_countresource_count" = 10
    "region_count"   = 3
    "vm_count"       = 3
  }
}


locals {

  # [for <item> in <collection>: <expression>]
   region_list = [for region in var.regions_list : region if region != "canda"]

  # ##### Filter the count_details map to include only entries with values greater than 5
 ## {for <key>, <value> in <map>: <key_expr> => <value_expr>}
  filtered_count_details = {
    for details_key, details_value in var.count_details : details_key => details_value
    if details_value > 4
  }
                                                        #region_count:3
   newformat = [for key, value in var.count_details : "${key} + ${value}"]
}

output "count_details" {
  value = local.filtered_count_details
  
}
output "server" {
  value = local.region_list
  
}
output "new_format" {
  value = local.newformat
  
}


# variable "count_details" {
#   type = map(number)
#   default = {
#     # details_key    # details_value
#     "resource_countresource_count" = 10
#     "region_count"   = 3
#     "vm_count"       = 3
#   }
# }

###### ["resoruce_count:10","region_count:3", "vm_count:8"]
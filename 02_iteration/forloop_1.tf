## Used for iterating over lists and maps.

variable "regions_list" {
  type    = list(string)
  default = ["eastus", "canda", "india"]

}

variable "count_details" {
  type = map(number)
  default = {
    # details_key    # details_value
    "resource_count" = 10
    "region_count"   = 3
    "vm_count"       = 8
  }
}


locals {
  
  region_list = [for region in var.regions_list : "${region} - az"]

  ##### Filter the count_details map to include only entries with values greater than 5
 
  filtered_count_details = {
    for details_key, details_value in var.count_details : details_key => details_value
    
  }
}

output "count_details" {
  value = local.filtered_count_details
  
}
output "server" {
  value = local.region_list
  
}



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



variable "regions_list" {
  type    = list(string)
  default = ["eastus", "canda", "india"]

}

#test_list = ["1","2","3"]


output "server_urls" {
  value = [for region in var.regions_list : "${region} - az"]
}


variable "regions_list" {
  type    = list(string)
  default = ["eastus", "canda", "india"]

}

output "server_urls" {
  value = [for region in var.regions_list : "${region} - az"]
}


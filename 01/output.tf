output "resource_group_info" {
  value = {
    name     = var.azure_resource_group_info[0]
    location = var.azure_resource_group_info[1]
    create   = var.azure_resource_group_info[2]
  }
}
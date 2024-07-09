```hcl

#### Define the local variables using for loops
locals {
  ##### Construct a list of server URLs by appending " - az" to each region
  server_urls = [for region in var.regions_list : "${region} - az"]

  ##### Filter the count_details map to include only entries with values greater than 5
  ```
  ```hcl
  filtered_count_details = {
    for details_key, details_value in var.count_details : details_key => details_value
    if details_value > 5 
  }
}
```

###### Output the server URLs from the local variable
  ```hcl
output "server_urls" {
  value = local.server_urls
}
```
  ```hcl
###### Output the filtered count details from the local variable
output "counts_output" {
  value = local.filtered_count_details
}
```
###### ["resoruce_count:10","region_count:3", "vm_count:8"]

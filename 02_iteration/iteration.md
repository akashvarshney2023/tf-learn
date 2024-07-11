## syntax:
#### Syntax for Lists and Sets:
[for <item> in <collection>: <expression>]

#### Syntax for Maps:
{for <key>, <value> in <map>: <key_expr> => <value_expr>}
=====================================================================
foreach is used within resource and module blocks to create multiple instances of a resource or module based on a map or a set of strings. It is part of the for_each meta-argument which allows you to dynamically construct multiple resources based on the items in the given collection.
=========================================================
resource "type" "name" {
  for_each = <collection>

  # Use each.key and each.value to access the current item's key and value
}

resource "azurerm_resource_group" "example" {
   for_each = {  }
  name     = "each.value"
  location = "each.value"
}
resource "aws_instance" "server" {
  for_each = { "a" = "ami-abc123", "b" = "ami-def456" }

  ami           = each.value
  instance_type = "t2.micro"
}

==================================

 # Transforming a list of numbers into their squares
##### [1, 2, 3, 4]
### Create this format from count_details 
###### ["resoruce_count:10","region_count:3", "vm_count:8"]


  name_value_tags = [
    { env = "development", team = "devops" },
    { env = "staging", priority = "high" },
    { env = "production", compliance = "strict" }
  ]



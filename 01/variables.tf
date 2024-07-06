## set(type):  an unordered collection of unique elements of the specified type.



## Usage: Use map when you need a simple dictionary-like structure where all values share the same data type.
## key value pairs 
variable "tags" {
  type = map(string)
  default = {
    "environment" = "production"
    "team"        = "ops"
  }
}



## Example of Objects
## difeerent data types
## Usage: Use object when you need to define a more complex structure where each attribute may be of a different type and you want to enforce a specific schema.
# variable "Employee" {
#   type = object({
#     name = string
#     age  = number
#   })
#   default = {
#     name = "John Doe"
#     age  = 30
#   }
# }

variable "vm_details" {
  type = object({
    name        = string
    environment = string
    cpu_cores   = number
    is_active   = bool
    tags        = map(string)
  })
  default = {
    name        = "web-server"
    environment = "production"
    cpu_cores   = 4
    is_active   = true
    tags        = {
      "role" = "frontend"
      "team" = "devops"
    }
  }
}

### Example of Touples 
## Fixed Size: Tuples have a fixed number of elements.
## Order Matters: The order of elements in a tuple is significant and cannot be changed.
## Heterogeneous Elements: Each element in a tuple can be of a different type.
variable "azure_resource_group_info" {
  type = tuple([string, string, bool])
}


#### Simple   DataTypes : 

variable "name" {
  type    = string
  default = "AkaSH"
}

variable "numberofinstance" {
  type    = number
  default = 100
}

variable "isPrivate" {
  type    = bool
  default = true
}

#Complex Data Types
variable "test_list" {
  type    = list(string)
  default = ["one", "two", "three"] 
}

variable "test_set" {
  type    = set(number)
  default = [1, 2, 3] 
}

variable "test_map" {
  type = map(string)
  default = {
    key1 = "value1"
    key2 = "value2"
  }
}

variable "Person" {
  type = object({
    name = string
    age  = number
    
  })
  default = {
    name = "John Doe"
    age  = 30
  }
}


variable "test_tuple" {
  type    = tuple([string, number, bool])
  default = ["example", 123, true]
}


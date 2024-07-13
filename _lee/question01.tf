variable "numeber_of_instances" {
  type    = list(number)
  default = [1, 2, 3, 4]

}


locals {

  # [for <item> in <collection>: <expression>]
  squre = [for num in var.numeber_of_instances : num * num + 1]
}

output "square_nnumbers" {
  value = local.squre

}
#
#==========================Problem Statement 1: Generating Multiple Outputs ==============================
#Task: You need to generate a list of strings that describe various items. Use a for loop to iterate over a list of item names and create 
#a map where each key is an item name and the value is a descriptive string.
#
#Details:
#
#Define a list of item names (e.g., ["item1", "item2", "item3"]).
#Use a for loop to generate a map where each key is an item name and the value is a string describing that item.
# ==================================================================================================================




 # ======================================Problem Statement 2: Generating a List of Resources==============================
 # Task: You need to create a list of generic resource names based on a range of numbers. Use a for loop to generate a list of 
 # resource names with a prefix and a sequential number.
 # 
 # Details:
 # 
 # Define a range of numbers (e.g., 1 to 5).
 # Use a for loop to create a list of strings where each string is a resource name with a prefix and a number (e.g., ["resource1", "resource2", "resource3", "resource4", "resource5"]).
 # ==================================================================================================================




 #===================================Problem Statement: Generating Key-Value Pairs for Configuration=================================================
# Task: You need to generate a list of configuration key-value pairs where each key is a combination of a category and a subcategory, and each value is a descriptive string. Use nested for loops to create these pairs.
# 
# Details:
# 
# Define a list of categories and a list of subcategories.
# Use nested for loops to generate key-value pairs where the key is a combination of the category and subcategory (e.g., "category1-subcategory1") and the value is a description string like "Description for category1-subcategory1".
# Output the generated key-value pairs.

 # ==================================================================================================================
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


#==================================================Problem statement 1 ===================================================
# Problem Statement 1: Creating Multiple Resources
# Task: You need to create multiple generic resources using Terraform. For this exercise, let's assume you're using a hypothetical 
# resource type example_resource. You want to create three instances of this resource with different names. Use a for loop to automate
#  the creation of these resources based on a list of names.
 
#- Define a list of names for the resources (e.g., ["resource1", "resource2", "resource3"]).
#- Use a for loop to iterate over this list and create a resource for each name.
#- Ensure that each resource has a unique name.
#- #=================================================================================================================================




#======================Problem Statement: Generating a Matrix of Values ================================================================
# Task: You need to generate a matrix of values representing a simple grid layout. Each cell in the grid should be labeled with its row and column indices. Use a for loop to create this matrix.
# 
# Details:
# 
# Define the number of rows and columns for the matrix (e.g., 3 rows and 4 columns).
# Use nested for loops to generate a list of strings where each string represents a cell in the matrix, labeled with its row and column indices (e.g., "row1-col1", "row1-col2", ..., "row3-col4").


#- #=================================================================================================================================
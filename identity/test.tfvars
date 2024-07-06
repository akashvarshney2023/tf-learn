locals {
  #The merge function is used to combine multiple maps into a single map
    identities = merge([
      for key_uai, value_uai in var.user_assigned_identity :
      value_uai.enabled ? {
        for key_scope, value_scope in value_uai.scopes : "${key_uai}-${key_scope}" => {
          identity_location    = value_uai.identity_location
          scope_id             = value_scope.scope_id
          role_definition_name = value_scope.role_definition_name
          principal_id         = azurerm_user_assigned_identity.aks_identity[key_uai].principal_id
        }
      } : {}
    ]...)
  }
  
  
  resource "azurerm_role_assignment" "uai_aks_role_assignment" {
    for_each = local.identities
  
    scope                = each.value.scope_id
    role_definition_name = each.value.role_definition_name
    principal_id         = each.value.principal_id
  }



user_assigned_identity = {
  uai_scus = {
    enabled                 = true
    shared_services_enabled = false
    identity_location       = "southcentralus"
    identity_name           = "id-collabhub-dev-001"
    scopes = {
      scope1 = {
        scope_id             = "cus-001"
        role_definition_name = "Azure Service Bus Data Owner"
      },
      scope2 = {
        scope_id             = "/scus001"
        role_definition_name = "Contributor"
      }
    }
  },
  # uai_weu = {
  #   enabled                 = true
  #   shared_services_enabled = false
  #   identity_location       = "southcentralus"
  #   identity_name           = "id-collabhub-dev-001"
  #   scopes = {
  #     scope1 = {
  #       scope_id             = "cus-001"
  #       role_definition_name = "Azure Service Bus Data Owner"
  #     },
  #     scope2 = {
  #       scope_id             = "/scus001"
  #       role_definition_name = "Contributor"
  #     }
  #   }
  # },
}
merge([

for key , value  in var.user_assigned_identity : value.enabled == true ?{
 for  key_scope , value_scope in value.scope: "${key}-${key_scope}" =>{
  identity_location = value.identity_location
  scope_id          = value_scope.scope_id
  role_definition_name = value_scope.role_definition_name
 }
}:{}
]...)

#  "uai_scus-scope1" = {
#     identity_location    = "southcentralus"
#     scope_id             = "cus-001"
#     role_definition_name = "Azure Service Bus Data Owner"
#     principal_id         = "some-principal-id"
#   },


user_assigned_identity = map(map(map(string)))

user_assigned_identity = map(map(string))
user_assigned_identity ={
  uai_scus-scope1 ={
    key ="value"
  },
  "uai_scus-scope2"={
    key ="value"
  }
}


user_assigned_identity = map(object({
  identity_location = string
  scope_id = string
  role_definition_name = string
  principal_id = string

}))

 {
  "uai_scus-scope1" = {
    identity_location    = "southcentralus"
    scope_id             = "cus-001"
    role_definition_name = "Azure Service Bus Data Owner"
    principal_id         = "some-principal-id"
  },
  "uai_scus-scope2" = {
    identity_location    = "southcentralus"
    scope_id             = "/scus001"
    role_definition_name = "Contributor"
    principal_id         = "some-principal-id"
  }
}
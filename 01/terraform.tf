terraform {
  cloud {
    organization = "av_personal"
    workspaces {
      name = "azure-terraform"
    }

  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.100.0"
    }    
  }
}


provider "azurerm" {
  features {}
  client_id       = "e596c61b-a0a3-49e4-b2e8-e3821d80eea0" # Add your client_id
  client_secret   = "qV98Q~dNXog2OCP3bLkJAqdlvaglZuAQvrevObPW" # Add your client_secret
  tenant_id       = "652c62f1-2766-420a-908a-89717b6465a8" # Add your tenant_id
  subscription_id = "c9f5db7b-4573-4b0b-9ce2-dedaeef10d7a" # Add your subscription_id
}

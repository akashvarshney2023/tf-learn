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
  client_id       = "xxxxxx-xxxx-xxxx-xxxx-xxxxxx" # Add your client_id
  client_secret   = "xxxxxx-xxxx-xxxx-xxxx-xxxxxx" # Add your client_secret
  tenant_id       = "xxxxxx-xxxx-xxxx-xxxx-xxxxxx" # Add your tenant_id
  subscription_id = "xxxxxx-xxxx-xxxx-xxxx-xxxxxx" # Add your subscription_id
}
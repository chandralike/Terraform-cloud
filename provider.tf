terraform {
    cloud {
    organization = "kiranlike-prod"

    workspaces {
      name = "workspace-dev"
    }
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.18.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "1efc2c67-679e-4887-8b99-13f7ca18cb9e"
  tenant_id = "e355b728-fe1b-43c3-b7ea-7c88a42be009"
  client_id = "7fc9b8c2-276e-45f5-a5ab-33ef92c371f0"
  client_secret = "UsR8Q~0hR_AJq668tvxPsNMhtXx4vci2-bdhPcnT"
  features {}
}


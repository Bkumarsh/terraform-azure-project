terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "bhakua_rg"
    storage_account_name = "bhkuastorageaccount"
    container_name       = "bhakuacontainer"
    key                  = "terraformb.tfstate"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "671a7c03-6175-4e7c-84d2-dbb791d4c47a"

}




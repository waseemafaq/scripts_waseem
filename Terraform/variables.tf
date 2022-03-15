provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  client_id = "${var.client_id}"
  client_secret = "${var.client_secret}"
  tenant_id = "${var.tenant_id}"
  features {
    
  }
}

variable "subscription_id" {
  description = "Enter Subscription ID for provisioning resrouce in Azure"
}

variable "client_id" {
    description = "Enter Client ID for application created in azure AD"
}

variable "client_secret" {
  description = "Enter Client Secret"
}

variable "tenant_id" {
  description = "Enter tenant ID"
}
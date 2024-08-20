# terraform/main.tf
provider "aws" {
  region = "us-west-2"
}

provider "azurerm" {
  features {}
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "azurerm_resource_group" "main" {
  name     = "example-resources"
  location = "West US"
}


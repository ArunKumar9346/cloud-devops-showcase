# Reusable Terraform Infrastructure for Multiple Environments
# Generic sample modules structure for Azure / GCP

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

# Example: Call reusable modules with environment-specific config
module "networking" {
  source = "./modules/networking"

  environment     = var.environment
  vnet_cidr       = var.vnet_cidr
  location        = var.location
  resource_group  = var.resource_group_name
}

module "compute" {
  source = "./modules/compute"

  environment     = var.environment
  subnet_id       = module.networking.subnet_id
  instance_size   = var.instance_size
  location        = var.location
}

module "security" {
  source = "./modules/security"

  environment     = var.environment
  resource_group  = var.resource_group_name
  key_vault_name  = "${var.project_name}-${var.environment}-kv"
}

module "monitoring" {
  source = "./modules/monitoring"

  environment     = var.environment
  resource_group  = var.resource_group_name
  alert_email     = var.alert_email
}

# Variables example (in variables.tf)
# variable "environment" { type = string }  # dev | qa | prod
# variable "vnet_cidr"   { type = string }
# Separate tfvars per environment: dev.tfvars, prod.tfvars

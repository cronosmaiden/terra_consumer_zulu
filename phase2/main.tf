############################
# Configuración del provider
############################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.45.0"
    }
  }
  required_version = ">= 1.5.2"
}

provider "aws" {
  region = var.region
}

############################
# Módulo WAF
############################

module "waf" {
  source = "git::https://github.com/cronosmaiden/terraform-module-test.git//waf?ref=main"

  waf_name        = var.waf_name
  waf_description = var.waf_description
  rate_limit      = var.rate_limit
  waf_rules       = var.waf_rules

  # Agregar los argumentos faltantes
  resource_arn   = var.api_gateway_stage_arn
  api_gateway_id = var.api_gateway_id  # Argumento faltante
  region         = var.region
}

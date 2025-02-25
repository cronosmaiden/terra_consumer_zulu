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
# Módulo Lambda
############################

module "lambda" {
  source = "git::https://github.com/cronosmaiden/terraform-module-test.git//lambda?ref=main"

  lambda_function_name               = var.lambda_function_name
  lambda_function_role               = var.lambda_function_role
  lambda_function_runtime            = var.lambda_function_runtime
  lambda_function_filename           = var.lambda_function_filename
  lambda_function_handler            = var.lambda_function_handler
  lambda_function_architecture       = var.lambda_function_architecture
  lambda_function_memory             = var.lambda_function_memory
  lambda_function_timeout            = var.lambda_function_timeout
  lambda_function_description        = var.lambda_function_description
  lambda_function_environment_variables = var.lambda_function_environment_variables

  # Agrega esta línea para corregir el error
  api_gateway_source_arn = module.api_gateway.api_gateway_execution_arn
}

############################
# Módulo API Gateway
############################

module "api_gateway" {
  source = "git::https://github.com/cronosmaiden/terraform-module-test.git//api_gateway?ref=main"

  apigateway_http_name           = var.apigateway_http_name
  cognito_authorizer_name        = var.cognito_authorizer_name
  cognito_identity_sources       = var.cognito_identity_sources
  cognito_audience               = var.cognito_audience
  cognito_issuer                 = var.cognito_issuer
  lambda_integration_uri         = module.lambda.lambda_arn
  default_route_key              = var.default_route_key
  waf_arn                        = null # Sin WAF en la fase 1
  region                         = var.region
}

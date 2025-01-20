############################
# Outputs de Phase 1
############################

output "api_gateway_id" {
  description = "ID del API Gateway creado"
  value       = module.api_gateway.api_gateway_id
}

output "api_gateway_stage_arn" {
  description = "ARN del stage prod del API Gateway"
  value       = module.api_gateway.api_gateway_stage_arn
}

output "lambda_arn" {
  description = "ARN de la función Lambda"
  value       = module.lambda.lambda_arn
}

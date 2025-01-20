############################
# Outputs de la Fase 2 (WAF)
############################

# ARN del Web ACL (WAF) creado
output "waf_arn" {
  description = "ARN del Web ACL (WAF) creado y asociado al API Gateway."
  value       = module.waf.waf_arn
}

# ID del Web ACL (WAF)
output "waf_id" {
  description = "ID del Web ACL (WAF) creado."
  value       = module.waf.waf_id
}

# ARN del API Gateway al que está asociado el WAF
output "api_gateway_associated_resource_arn" {
  description = "ARN del API Gateway con el que se ha asociado el WAF."
  value       = var.api_gateway_stage_arn
}

# Estado de la asociación entre WAF y el API Gateway
output "waf_association_status" {
  description = "Estado de la asociación del Web ACL (WAF) con el API Gateway."
  value       = module.waf.waf_association_status
}

variable "region" {
  description = "Región de AWS para desplegar los recursos."
  type        = string
}

variable "waf_name" {
  description = "Nombre del Web ACL de AWS WAF."
  type        = string
}

variable "waf_description" {
  description = "Descripción del Web ACL."
  type        = string
}

variable "rate_limit" {
  description = "Límite de solicitudes por minuto."
  type        = number
}

variable "waf_rules" {
  description = "Lista de reglas del WAF."
  type = list(object({
    name        = string
    priority    = number
    ip_set_arn  = string
    metric_name = string
  }))
}

variable "api_gateway_stage_arn" {
  description = "ARN del stage prod del API Gateway."
  type        = string
}

variable "resource_arn" {
  description = "ARN del API Gateway al que se asociará el WAF."
  type        = string
}

variable "api_gateway_id" {
  description = "ID del API Gateway."
  type        = string
}

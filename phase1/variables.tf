############################
# Variables para Phase 1
############################

variable "region" {
  description = "Región de AWS para desplegar los recursos."
  type        = string
  default     = "us-east-1"
}

variable "lambda_function_name" {
  description = "Nombre de la función Lambda."
  type        = string
}

variable "lambda_function_role" {
  description = "ARN del rol de ejecución de la Lambda. Si no se especifica, se usará el rol creado por el módulo Lambda."
  type        = string
  default     = null
}

variable "lambda_function_runtime" {
  description = "Runtime de la Lambda (por ejemplo, python3.9)."
  type        = string
  default     = "python3.9"
}

variable "lambda_function_filename" {
  description = "Ruta del archivo ZIP con el código de la Lambda."
  type        = string
}

variable "lambda_function_handler" {
  description = "Nombre del archivo y método handler de la Lambda."
  type        = string
}

variable "lambda_function_architecture" {
  description = "Arquitectura de la Lambda (x86_64 o arm64)."
  type        = string
  default     = "x86_64"
}

variable "lambda_function_memory" {
  description = "Cantidad de memoria asignada a la Lambda (en MB)."
  type        = number
  default     = 128
}

variable "lambda_function_timeout" {
  description = "Tiempo máximo de ejecución de la Lambda (en segundos)."
  type        = number
  default     = 10
}

variable "lambda_function_description" {
  description = "Descripción de la función Lambda."
  type        = string
  default     = ""
}

variable "lambda_function_environment_variables" {
  description = "Mapa de variables de entorno para la Lambda."
  type        = map(string)
  default     = {}
}

variable "apigateway_http_name" {
  description = "Nombre del API Gateway."
  type        = string
}

variable "cognito_authorizer_name" {
  description = "Nombre del autorizador Cognito."
  type        = string
}

variable "cognito_identity_sources" {
  description = "Fuentes de identidad para el autorizador Cognito."
  type        = list(string)
  default     = ["$request.header.Authorization"]
}


variable "cognito_audience" {
  description = "Audiencia del autorizador Cognito."
  type        = list(string)
}

variable "cognito_issuer" {
  description = "Issuer de Cognito."
  type        = string
}

variable "default_route_key" {
  description = "Clave de la ruta predeterminada del API Gateway."
  type        = string
  default     = "ANY /"
}

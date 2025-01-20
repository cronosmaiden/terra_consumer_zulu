region = "us-east-1"

lambda_function_name        = "test-lambda-new"
lambda_function_filename    = "lambda_function.zip"
lambda_function_handler     = "lambda_function.lambda_handler"
lambda_function_role = null

apigateway_http_name        = "test-api-gateway"
cognito_authorizer_name     = "test-cognito-authorizer"
cognito_audience            = ["my-audience"]
cognito_issuer              = "https://cognito-idp.us-east-1.amazonaws.com/us-east-1_vOMqDsNli"

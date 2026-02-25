output "api_endpoint" {
  description = "The URL of the API Gateway. Paste this into your website's JavaScript fetch call."
  value       = "${aws_api_gateway_deployment.contact_api_deployment.invoke_url}/contact"
}

output "lambda_function_arn" {
  description = "The ARN of the Lambda function (useful for debugging or logging)."
  value       = aws_lambda_function.contact_lambda.arn
}
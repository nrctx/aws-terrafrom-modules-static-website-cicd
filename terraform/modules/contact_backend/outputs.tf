output "api_endpoint" {
  description = "The URL of the API Gateway. Paste this into your website's JavaScript fetch call."
  # We pull the invoke_url directly from the Stage resource
  value       = "${aws_apigatewayv2_stage.default.invoke_url}/contact"
}

output "lambda_function_arn" {
  description = "The ARN of the Lambda function (useful for debugging or logging)."
  value       = aws_lambda_function.contact_lambda.arn
}

output "dkim_tokens" {
  value = aws_ses_domain_dkim.main.dkim_tokens
}
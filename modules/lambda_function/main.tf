resource "aws_lambda_function" "lambda_function" {
  function_name = var.function_name
  role = var.role
  handler = var.handler
  runtime = var.runtime
  timeout = var.timeout
  memory_size = var.memory_size
  source_code_hash = var.source_code_hash
  filename = var.filename
  environment {
    variables = {
      instance_id = var.instance_id
    }
  }
}

resource "aws_cloudwatch_event_rule" "lambda_schedule_rule" {
  name = "lambda_schedule_rule"
  schedule_expression = var.schedule_expression
}

resource "aws_cloudwatch_event_target" "lambda_schedule_target" {
  rule = aws_cloudwatch_event_rule.lambda_schedule_rule.name
  target_id = "lambda_schedule_target"
  arn = aws_lambda_function.lambda_function.arn
}

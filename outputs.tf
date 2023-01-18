output "iam_role_arn" {
  value       = module.iam_role.iam_role_arn
  description = "The ARN of the IAM role"
}

output "lambda_function_arn" {
  value       = module.lambda_function.lambda_function_arn
  description = "The ARN of the Lambda function"
}

output "instance_ids" {
  value = module.ec2_instance.ec2_instance_ids
  description = "The IDs of the EC2 instances"
}


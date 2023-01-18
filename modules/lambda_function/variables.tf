variable "function_name" {
  type        = string
  default     = "lambda_function"
  description = "The name of the Lambda function"
}

variable "schedule_expression" {
  type        = string
  default     = "cron(0 8 ? * MON-FRI *)"
  description = "The schedule expression for the Lambda function"
}

variable "runtime" {
  type        = string
  default     = "python3.9"
  description = "The runtime for the lambda function"
}

variable "handler" {
  type        = string
  default     = "lambda_function.lambda_handler"
  description = "The name of the handler for the Lambda function"
}

variable "memory_size" {
  type        = number
  default     = 128
  description = "The amount of memory to allocate to the function."
}

variable "timeout" {
  type        = number
  default     = 30
  description = "The function execution time at which Lambda should terminate the function"
}

variable "source_code_hash" {
  type        = string
  description = "The base64 representation of the deployment package"
}

variable "filename" {
  type        = string
  description = "The filename of the deployment package"
}

variable "instance_id" {
  type        = string
  description = "The id of the instance to manage"
}

variable "role" {
  type        = string
  description = "The ARN of the IAM role that Lambda will assume when it runs the function"
}

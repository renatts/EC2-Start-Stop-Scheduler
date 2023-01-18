variable "ami" {
  type        = string
  default     = ""
  description = "The ID of the AMI to use for the EC2 instances"
}

variable "region" {
  type        = string
  default     = "eu-central-1"
  description = "The AWS Region"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "The type of EC2 instances to create"
}

variable "instance_name" {
  type        = string
  default     = "my-instance"
  description = "The name of the EC2 instances"
}

variable "replicas" {
  type        = number
  default     = 2
  description = "The number of EC2 instances to create"
}

variable "role_name" {
  type        = string
  default     = "lambda_execution"
  description = "The name of the IAM role"
}

variable "role_path" {
  type        = string
  default     = "/lambda-execution-role/"
  description = "The path of the IAM role"
}

variable "assume_role_policy" {
  type        = string
  description = "The policy document that allows Lambda to assume the role"
}

variable "permissions" {
  type        = list(map(string))
  default     = []
  description = "The permissions that are associated with the role"
}

variable "function_name" {
  type        = string
  default     = "start_stop_instances"
  description = "The name of the Lambda function"
}

variable "schedule_expression" {
  type        = string
  default     = "cron(0 9-17 * * 0-4)"
  description = "The schedule expression for the Lambda function"
}

variable "runtime" {
  type        = string
  default     = "python3.9"
  description = "The runtime for the Lambda function"
}

variable "handler" {
  type        = string
  default     = "index.handler"
  description = "The handler for the Lambda function"
}

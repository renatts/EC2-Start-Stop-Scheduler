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

variable "ami" {
  type        = string
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instances"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "The type of the EC2 instances"
}

variable "instance_name" {
  type        = string
  description = "The name of the EC2 instances"
}

variable "replicas" {
  type        = number
  default     = 2
  description = "The number of EC2 instances to create"
}


terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48"
    }
  }
}

provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = var.instance_type
  instance_name = var.instance_name
  replicas      = var.replicas
}

module "iam_role" {
  source             = "./modules/iam_role"
  role_name          = var.role_name
  role_path          = var.role_path
  assume_role_policy = var.assume_role_policy
  permissions        = var.permissions
}

module "lambda_function" {
  source              = "./modules/lambda_function"
  function_name       = var.function_name
  schedule_expression = var.schedule_expression
  runtime             = var.runtime
  handler             = var.handler
  memory_size         = 128
  timeout             = 60
  source_code_hash    = filebase64sha256("lambda_function.zip")
  filename            = "lambda_function.zip"
  instance_id         = module.ec2_instance.instance_ids
  role                = module.iam_role.iam_role_arn
}

<a name="readme-top"></a>

<h2 align="left">EC2 Start/Stop Scheduler</h2>
</div>

<!-- ABOUT THE PROJECT -->
<h3 align="left">This Terraform solution creates a Lambda function that starts and stops EC2 instances on a schedule, and also creates EC2 instances.</h3>

[![Product Name Screen Shot][product-screenshot]](https://github.com/renatts/EC2-Start-Stop/blob/master/diagrams/diagram.png)

[product-screenshot]: diagrams/diagram.png

## Requirements

- Terraform 0.13 or later
- AWS account and access credentials

## Usage

1. Clone the repository and navigate to the directory.
2. Create a `terraform.tfvars` file and set the required variables, such as the AMI ID, instance type, and number of replicas.
3. Initialize Terraform: `terraform init`
4. Validate the Terraform files: `terraform validate`
5. Create an execution plan: `terraform plan`
6. Apply the execution plan: `terraform apply`

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami | The ID of the Amazon Machine Image (AMI) | `string` |  | yes |
| instance_type | The type of the EC2 instance | `string` | `t3.micro` | no |
| replicas | The number of EC2 instances to create | `number` | `2` | no |
| function_name | The name of the Lambda function | `string` | `lambda_function` | no |
| schedule_expression | The schedule expression for the Lambda function | `string` | `cron(0 8 ? * MON-FRI *)` | no |

## Outputs

| Name | Description |
|------|-------------|
| lambda_function_arn | The ARN of the Lambda function |

## Best practices

- This solution follows best practices for Terraform development, such as using modules and variables, and using outputs to expose important information.
- Each resource is in a different directory with its own `main.tf` file.
- The variables are defined in a `variables.tf` file, and their default values are defined in a `terraform.tfvars` file.
- The outputs are defined in a `outputs.tf` file.
- This solution uses a `.gitignore` file to ignore files and directories that should not be tracked by version control, such as the `.terraform` directory and the `terraform.tfstate` file.

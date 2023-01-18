locals {
  role_name   = var.role_name
  role_path   = var.role_path
  permissions = var.permissions
}

resource "aws_iam_role" "iam_role" {
  name = local.role_name
  path = local.role_path

  assume_role_policy = var.assume_role_policy
}

resource "aws_iam_role_policy" "iam_role_policy" {
  name = "${local.role_name}_policy"
  role = aws_iam_role.iam_role.id

  policy = jsonencode({
    Statement = [
      {
        Effect   = "Allow",
        Action   = local.permissions,
        Resource = "*"
      }
    ]
  })
}

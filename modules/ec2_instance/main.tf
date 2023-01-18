resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.replicas
}

output "ec2_instance_ids" {
  value = aws_instance.ec2_instance.*.id
}

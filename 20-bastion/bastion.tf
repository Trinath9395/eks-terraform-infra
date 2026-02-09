resource "aws_instance" "this" {
  ami                    = "ami-0220d79f3f480ecf5"
  vpc_security_group_ids = [data.aws_ssm_parameter.bastion_sg_id.value] 
  instance_type          = "t3.micro"
  subnet_id              = local.public_subnet_ids
  user_data              = file("bastion.sh")
  root_block_device {
    volume_size = 50 
    volume_type = "gp3"
  }
  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-${var.environment}-bastion"
    }
  )
}


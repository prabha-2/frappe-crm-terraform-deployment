
# Find the latest Ubuntu 22.04 AMI
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

# Create EC2 instance
resource "aws_instance" "frappe_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.frappe_sg.id]
  associate_public_ip_address = true

  # Execute installation script during first boot
  user_data = templatefile("${path.module}/user_data.sh", {
    deployment_email = var.deployment_email
    site_name        = var.site_name
  })

  # Configure root disk
  root_block_device {
    volume_size = 30
    volume_type = "gp3"
  }

  tags = {
    Name = var.instance_name
  }
}

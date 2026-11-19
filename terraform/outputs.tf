
output "ec2_instance_id" {
  description = "Frappe CRM EC2 instance ID"
  value       = aws_instance.frappe_server.id
}

output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.frappe_server.public_ip
}

output "ec2_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.frappe_server.public_dns
}

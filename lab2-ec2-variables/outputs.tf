output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "ssh_command" {
  description = "Command to SSH into the instance"
  value       = "ssh -i ssh_key ec2-user@${aws_instance.web.public_ip}"
} 

output "ssh_command_dns" {
  description = "Command to SSH into the instance"
  value       = "ssh -i ssh_key ec2-user@${aws_instance.web.public_dns}"
}

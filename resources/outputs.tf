output "ec2_instance_dev_public_ip" {
    value = aws_instance.dev[0].public_ip
}

output "ec2_instance_dev_us-east-1_public_ip" {
    value = aws_instance.dev_us-east-1[0].public_ip
}
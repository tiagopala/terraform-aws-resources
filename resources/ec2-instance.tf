# EC2 Instances
resource "aws_instance" "dev" {
  count                  = 1
  ami                    = var.amis["sa-east-1"]
  instance_type          = "t2.micro"
  key_name               = var.key_pair
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    "Name" = "dev-${count.index}"
  }
  depends_on = [
    aws_s3_bucket.bucket // Creating dependency between ec2 instance and s3 bucket
  ]
}

resource "aws_instance" "dev_us-east-1" {
  provider               = aws.us-east-1
  count                  = 1
  ami                    = var.amis["us-east-1"]
  instance_type          = "t2.micro"
  key_name               = var.key_pair
  vpc_security_group_ids = [aws_security_group.allow_ssh_us-east-1.id]
  tags = {
    "Name" = "dev-${count.index}"
  }
}
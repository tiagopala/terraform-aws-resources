# EC2 Instances
resource "aws_instance" "dev" {
  count                  = 1
  ami                    = "ami-0aca10934d525a6f0"
  instance_type          = "t2.micro"
  key_name               = "terraform-kp"
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
  ami                    = "ami-05fa00d4c63e32376"
  instance_type          = "t2.micro"
  key_name               = "terraform-kp"
  vpc_security_group_ids = [aws_security_group.allow_ssh_us-east-1.id]
  tags = {
    "Name" = "dev-${count.index}"
  }
}
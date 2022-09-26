variable "amis" {
  type = map(string)

  default = {
    "sa-east-1" = "ami-0aca10934d525a6f0"
    "us-east-1" = "ami-05fa00d4c63e32376"
  }
}

variable "cidr_blocks" {
  type = list(string)

  default = [ "0.0.0.0/0" ]
}

variable "key_pair" {
  default = "terraform-kp"
}
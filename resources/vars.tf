variable "amis" {
  type = map(string)

  default = {
    "sa-east-1" = "ami-0aca10934d525a6f0"
    "us-east-1" = "ami-05fa00d4c63e32376"
  }
}
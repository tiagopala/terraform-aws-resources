terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tiagopala-organization"

    workspaces {
      name = "tiagopala-workspace"
    }
  }
}
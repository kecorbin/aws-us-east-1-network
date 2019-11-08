terraform {
  backend "remote" {
    organization = "kcorbin"
    workspaces {
      name = "aws-us-east-1-network"
    }
  }
}

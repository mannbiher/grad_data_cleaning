terraform {
  backend "s3" {
    bucket  = "m-terraform-state"
    key     = "openrefine/network.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

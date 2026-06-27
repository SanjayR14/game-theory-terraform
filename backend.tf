terraform {
  backend "s3" {
    bucket         = "game-theory-terraform-state-851218292096"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

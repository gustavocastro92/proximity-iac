provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "main" {
  bucket = var.s3.name
}

variable "s3" {}
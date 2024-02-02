resource "aws_dynamodb_table" "main" {
  name           = var.dynamodb.name
  billing_mode   = var.dynamodb.billing_mode
  read_capacity  = var.dynamodb.read_capacity
  write_capacity = var.dynamodb.write_capacity
  attribute {
    name = var.dynamodb.attribute.name
    type = var.dynamodb.attribute.type
  }
  hash_key = var.dynamodb.hash_key
}

variable "dynamodb" {}

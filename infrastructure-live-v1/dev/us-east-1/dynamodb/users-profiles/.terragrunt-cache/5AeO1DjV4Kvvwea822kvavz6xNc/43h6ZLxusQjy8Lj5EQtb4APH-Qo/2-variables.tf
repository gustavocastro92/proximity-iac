variable "env" {
  description = "Environment name."
  type        = string
}

variable "dynamodb_name" {
  description = "Table name."
  type = string
}

variable "billing_mode" {
  description = "Billing mode."
  type = string
}

variable "read_capacity" {
  description = "Read capacity."
  type = string
}

variable "write_capacity" {
  description = "Write capacity."
  type = string
}

variable "attributes" {
  type = list(map(string))
  description = "Table attributes."
}

variable "hash_key" {
  description = "Hash key."
  type = string
  
}
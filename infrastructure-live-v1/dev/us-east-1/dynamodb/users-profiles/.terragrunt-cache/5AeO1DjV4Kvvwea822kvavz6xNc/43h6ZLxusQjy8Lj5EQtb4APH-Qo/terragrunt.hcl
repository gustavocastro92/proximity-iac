terraform {
  source = "../../../../../infrastructure-modules/dynamodb"
}

include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path           = find_in_parent_folders("env.hcl")
  expose         = true
  merge_strategy = "no_merge"
}

inputs = {
  env     = include.env.locals.env
  dynamodb_name = "proximity-users-profiles",
  billing_mode = "PROVISIONED",
  read_capacity = "2",
  write_capacity = "2",

  attributes = [
    {
      name = "userId",
      type = "S"
    }
  ]

  hash_key = "userId"
}

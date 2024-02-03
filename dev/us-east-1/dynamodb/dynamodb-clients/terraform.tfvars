dynamodb = {
    
    name = "dev-proximity-customers",
    billing_mode = "PROVISIONED",
    read_capacity = "2",
    write_capacity = "2",

    attribute = {
        name = "customerId",
        type = "S"
    }

    hash_key = "customerId"

}
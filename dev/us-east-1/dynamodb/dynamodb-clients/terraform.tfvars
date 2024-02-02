dynamodb = {
    
    name = "proximity-clients",
    billing_mode = "PROVISIONED",
    read_capacity = "2",
    write_capacity = "2",

    attribute = {
        name = "clientId",
        type = "S"
    }

    hash_key = "clientId"

}
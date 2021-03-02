  
module "db" {
    source = "../"
    region = "us-east-2"
    subnet_ids = [
        "subnet-023ee943aefb690ac",
        "subnet-05681fc59300d1a48",
        "subnet-08627d4d768c30748"
    ]
    identifier          = "dbname"
    allocated_storage   = 20
    storage_type        = "gp2"
    engine              = "mysql"
    engine_version      = "5.7"
    instance_class      = "db.t2.micro"
    username            = "foo"
    publicly_accessible = true
    db_access = [
        "0.0.0.0/0"
    ]
}
output region {
	value = module.db.region
}
output subnet_list {
	value = module.db.subnet_list
}
output db_access {
	value = module.db.db_access
}
output DB_NAME {
	value = module.db.DB_NAME
}
output endpoint {
	value = module.db.endpoint
}
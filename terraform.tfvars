environment       = "prod"
instance_name     = "test-db"
allocated_storage = "100"
instance_class    = "db.t3.xlarge"
storage_type      = "gp2"
engine            = "sqlserver-se"
engine_version    = "13.00.5820.21.v1"
multi_az          = false
subnet_ids        = ["subnet-0", "subnet-0b"]
backup_retention_period = 7

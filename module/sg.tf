resource "aws_db_subnet_group" "default_rds_mssql" {
  name        = "${var.environment}-${var.instance_name}-subnet-group"
  description = "${var.environment}-${var.instance_name}e subnet group."
  subnet_ids  = var.subnet_ids

  tags = {
    Name = "${var.environment}-rds-mssql-subnet-group"
  }
}

resource "aws_security_group" "rds_mssql_security_group" {
  name        = "${var.environment}-${var.instance_name}-mssql-sg-group"
  description = "${var.environment}-${var.instance_name} allow all vpc traffic to rds mssql."
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["${var.vpc_cidr_blocks}"]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.environment}-all-rds-mssql-internal"
    Env  = "${var.environment}"
  }
}

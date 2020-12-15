provider "aws"{
  region = var.region
}

resource "aws_rds_cluster" "mysql-cluster" {
  cluster_identifier = var.identifier
  availability_zones = var.azs
  database_name      = var.db_name
  master_username    = var.username
  master_password    = var.password
}

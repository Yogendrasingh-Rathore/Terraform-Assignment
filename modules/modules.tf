provider "aws" {
  region = "us-east-1"
}

data "aws_secretsmanager_secret_version" "creds" {
  secret_id = "db-creds"
}

module "rds-postgre" {
  source               =  "../"
  identifier           =  "postgres"
  allocated_storage    =  "10"
  storage_type         =  "gp2"
  engine               =  "postgres"
  engine_version       =  "11.5"
  instance_class       =  "db.t2.micro"
  name                 =  "terraformAssg"
  username             =  "admin_baba"
  password             =  data.aws_secretsmanager_secret_version.creds.secret_id
  apply_immediately    =  "false"
  backup_window        =  "03:00-04:00"
  deletion_protection  =  "true"
  skip_snapshot        =  "true"
}

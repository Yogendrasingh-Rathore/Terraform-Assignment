terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}

provider "aws"{
  region = "us-east-1"
}

data "aws_availability_zones" "azs" {

}

data "aws_secretsmanager_secret_version" "creds" {
  secret_id = "db-creds"
}

module "mysql_aurora_instances" {
  source               =  "../rds_instance/"
  my_count             =  2
  identifier           =  "aurora-cluster"
  cluster_identifier   =  "mysql_aurora_cluster"
  instance_class       =  "db.t2.micro"
  engine               =  "aurora-mysql"
  engine_version       =  "5.7"
}

module "mysql_aurora_cluster" {
  source               =  "../rds_cluster/"
  identifier           =  "mysql-aurora-cluster" 
  azs                  =  data.aws_availability_zones.azs.names
  db_name              =  "my_db"
  username             =  "demo"
  password             =  data.aws_secretsmanager_secret_version.creds.secret_id
}


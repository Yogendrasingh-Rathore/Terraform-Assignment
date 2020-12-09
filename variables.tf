variable "region" {
 default = "us-east-1"
}

variable "identifier" {
 default = "postgres"
}

variable "allocated_storage" {
 default = "10"
}

variable "max_allocated_storage" {
 default = "100"
}

variable "storage_type" {
 default = "gp2"
}


variable "engine" {
 default = "postgres"
}

variable "engine_version"{
 default = "9"
}

variable "instance_class" {
  default = "db.t2.micro"
}

variable "name" {
 default = "terraform-postgres"
}

variable "username" {}

variable "password" {}

variable "apply_immediately" {
 default = "false"
}

variable "backup_window" {
 default = "02:00-03:00"
}

variable "deletion_protection" {
 default = "true"
}

variable "skip_snapshot" {
 default = "true"
}

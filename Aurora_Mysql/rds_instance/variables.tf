variable "region"{
 default = "us-east-1"
}

variable "my_count"{
  default = "1"
}

variable "identifier" {
  default = "aurora-cluster"
}

variable "cluster_identifier" {
  default = "aurora-cluster"
}

variable "instance_class" {
  default = "db.t2.micro"
}

variable "engine" {}

variable "engine_version" {}

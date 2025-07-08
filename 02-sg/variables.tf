variable "project_name" {
  default = "roboshop"
}

variable "environment_name" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "dev"
    Terraform = "true"
  }
}

variable "sg_tags" {
  default = {}
}


variable "common_tags" {
    default = {
        project = "roboshop"
        environment = "dev"
        terraform = "true"
    }
}

variable "project_name" {
  default = "roboshop"
}

variable "environment_name" {
  default = "dev"
}
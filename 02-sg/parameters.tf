resource "aws_ssm_parameter" "mongodb_sg_id" {
  name = "/${var.project_name}/${var.environment_name}/mongodb_sg_id"
  type = "String"
  value = module.mongodb.sg_id
}


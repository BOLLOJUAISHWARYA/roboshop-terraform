data "aws_ssm_parameter" "mongodb_sg_id" {
  name = "/${var.project_name}/${var.environment_name}/mongodb_sg_id"
}

# data "aws_ssm_parameter" "mysql_sg_id" {
#   name = "/${var.project_name}/${var.environment_name}/mysql_sg_id"
# }

# data "aws_ssm_parameter" "redis_sg_id" {
#   name = "/${var.project_name}/${var.environment_name}/redis_sg_id"
# }

# data "aws_ssm_parameter" "rabbitmq_sg_id" {
#   name = "/${var.project_name}/${var.environment_name}/rabbitmq_sg_id"
# }

# data "aws_ssm_parameter" "catalogue_sg_id" {
#   name = "/${var.project_name}/${var.environment_name}/catalogue_sg_id"
# }

# data "aws_ssm_parameter" "cart_sg_id" {
#   name = "/${var.project_name}/${var.environment_name}/cart_sg_id"
# }

# data "aws_ssm_parameter" "user_sg_id" {
#   name = "/${var.project_name}/${var.environment_name}/user_sg_id"
# }

# data "aws_ssm_parameter" "shipping_sg_id" {
#   name = "/${var.project_name}/${var.environment_name}/shipping_sg_id"
# }

# data "aws_ssm_parameter" "payment_sg_id" {
#   name = "/${var.project_name}/${var.environment_name}/payment_sg_id"
# }

# data "aws_ssm_parameter" "web_sg_id" {
#   name = "/${var.project_name}/${var.environment_name}/web_sg_id"
# }

data "aws_ssm_parameter" "database_subnet_ids" {
  name = "/${var.project_name}/${var.environment_name}/database_subnet_ids"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project_name}/${var.environment_name}/public_subnet_ids"
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project_name}/${var.environment_name}/private_subnet_ids"
}
module "mongodb" {
  source = "../../Security_groups"
  project_name = var.project_name
  environment_name = var.environment_name
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "mongodb"
  sg_description = "SG for mongodb"
}

module "mysql" {
  source = "../../Security_groups"
  project_name = var.project_name
  environment_name = var.environment_name
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "mysql"
  sg_description = "SG for mysql"
}

module "redis" {
  source = "../../Security_groups"
  project_name = var.project_name
  environment_name = var.environment_name
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "redis"
  sg_description = "SG for redis"
}

module "rabbitmq" {
  source = "../../Security_groups"
  project_name = var.project_name
  environment_name = var.environment_name
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "rabbitmq"
  sg_description = "SG for rabbitmq"
}

#app

module "catalogue" {
  source = "../../Security_groups"
  project_name = var.project_name
  environment_name = var.environment_name
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "catalogue"
  sg_description = "SG for catalogue"
}

module "user" {
  source = "../../Security_groups"
  project_name = var.project_name
  environment_name = var.environment_name
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "user"
  sg_description = "SG for user"
}

module "cart" {
  source = "../../Security_groups"
  project_name = var.project_name
  environment_name = var.environment_name
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "cart"
  sg_description = "SG for cart"
}

module "shipping" {
  source = "../../Security_groups"
  project_name = var.project_name
  environment_name = var.environment_name
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "shipping"
  sg_description = "SG for shipping"
}

module "payment" {
  source = "../../Security_groups"
  project_name = var.project_name
  environment_name = var.environment_name
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "payment"
  sg_description = "SG for payment"
}

#web

module "web" {
  source = "../../Security_groups"
  project_name = var.project_name
  environment_name = var.environment_name
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "web"
  sg_description = "SG for web"
}

#security rules

resource "aws_security_group_rule" "web_catalogue" {
  source_security_group_id = module.web.sg_id
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  security_group_id = module.catalogue.sg_id
}

resource "aws_security_group_rule" "web_cart" {
  source_security_group_id = module.web.sg_id
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  security_group_id = module.cart.sg_id
}


resource "aws_security_group_rule" "web_user" {
  source_security_group_id = module.web.sg_id
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  security_group_id = module.user.sg_id
}

resource "aws_security_group_rule" "web_shipping" {
  source_security_group_id = module.web.sg_id
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  security_group_id = module.shipping.sg_id
}

resource "aws_security_group_rule" "web_payment" {
  source_security_group_id = module.web.sg_id
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  security_group_id = module.payment.sg_id
}


resource "aws_security_group_rule" "catalogue_mongodb" {
  source_security_group_id = module.catalogue.sg_id
  type = "ingress"
  from_port = 27017
  to_port = 27017
  protocol = "tcp"
  security_group_id = module.mongodb.sg_id
}

resource "aws_security_group_rule" "user_mongodb" {
  source_security_group_id = module.user.sg_id
  type = "ingress"
  from_port = 27017
  to_port = 27017
  protocol = "tcp"
  security_group_id = module.mongodb.sg_id
}

resource "aws_security_group_rule" "mysql_shipping" {
  source_security_group_id = module.mysql.sg_id
  type = "ingress"
  from_port = 3306
  to_port = 3306
  protocol = "tcp"
  security_group_id = module.shipping.sg_id
}

resource "aws_security_group_rule" "payment_rabbitmq" {
  source_security_group_id = module.payment.sg_id
  type = "ingress"
  from_port = 5672
  to_port = 5672
  protocol = "tcp"
  security_group_id = module.rabbitmq.sg_id
}

resource "aws_security_group_rule" "user_redis" {
  source_security_group_id = module.user.sg_id
  type = "ingress"
  from_port = 6379
  to_port = 6379
  protocol = "tcp"
  security_group_id = module.redis.sg_id
}

resource "aws_security_group_rule" "cart_redis" {
  source_security_group_id = module.cart.sg_id
  type = "ingress"
  from_port = 6379
  to_port = 6379
  protocol = "tcp"
  security_group_id = module.redis.sg_id
}
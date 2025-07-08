module "roboshop" {
  source = "git::https://github.com/BOLLOJUAISHWARYA/terraform_vpc_module.git?ref=main"
  project_name = var.project_name
  environment_name = var.environment_name
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

  public_subnet_cidr = var.public_subnet_cidr

  private_subnet_cidr = var.private_subnet_cidr

  database_subnet_cidr = var.database_subnet_cidr

  is_peering_required = var.is_peering_required
}
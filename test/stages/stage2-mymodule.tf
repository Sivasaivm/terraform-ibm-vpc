module "dev_vpc" {
  source = "./module"

  resource_group_name = var.resource_group_name
  region              = var.region
  prefix_name         = var.name_prefix
  ibmcloud_api_key    = var.ibmcloud_api_key
  vpc_zone_names      = var.vpc_zone_names
  public_gateway      = var.vpc_public_gateway == "true"
  apply               = var.vpc_apply == "true"
}

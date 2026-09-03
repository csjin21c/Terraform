resource "aws_vpc" "this" {
  # 묶여있는 vpc_options 오브젝트에서 값을 가져옵니다.
  cidr_block                           = var.vpc_options.cidr_block
  instance_tenancy                     = var.vpc_options.instance_tenancy
  enable_dns_support                   = var.vpc_options.enable_dns_support
  enable_dns_hostnames                 = var.vpc_options.enable_dns_hostnames
  assign_generated_ipv6_cidr_block     = var.vpc_options.assign_generated_ipv6_cidr_block
  enable_network_address_usage_metrics = var.vpc_options.enable_network_address_usage_metrics
  tags = { Name = var.vpc_options.vpc_name }
}
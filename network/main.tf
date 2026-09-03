resource "aws_vpc" "this" {
  cidr_block                           = var.baseInfo.cidr_block
  instance_tenancy                     = "default"
  enable_dns_support                   = true
  enable_dns_hostnames                 = true
  assign_generated_ipv6_cidr_block     = false
  enable_network_address_usage_metrics = false
  tags = { Name = "${local.tags_header}-vpc" }
}
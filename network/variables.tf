# ######################################################################
# VPC 변수 선언
# ######################################################################
variable "vpc_options" {
  description = "VPC 상세 설정 옵션"
  default = {
    vpc_name                              = "ian-terraform-vpc"
    cidr_block                            = "10.0.0.0/16"
    # 나머지는 optional에 지정된 기본값이 자동으로 적용됨
  }
  
  type = object({
    vpc_name                              = string
    cidr_block                            = optional(string, "10.0.0.0/16")
    instance_tenancy                      = optional(string, "default")
    enable_dns_support                    = optional(bool, false)
    enable_dns_hostnames                  = optional(bool, false)
    assign_generated_ipv6_cidr_block      = optional(bool, false)
    enable_network_address_usage_metrics  = optional(bool, false)
  })
}

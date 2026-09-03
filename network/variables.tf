# ######################################################################
# VPC 변수 선언
# ######################################################################
variable "baseInfo" {
  description = "기본 설정 정보"
  
  type = object({
    region                                = optional(string, "")
    owner                                 = optional(string, "")
    project                               = optional(string, "")
    environment                           = optional(string, "")
    class                                 = optional(string, "")
    tool                                  = optional(string, "")
    cidr_block                            = optional(string, "")
  })

  # default를 생략할 경우 반드시 terraform.tfvars에서 값을 지정해야 합니다.
  default = {
    region                                = "ap-south-1"
    owner                                 = "ian"
    project                               = "terraform"
    environment                           = "dev"
    class                                 = "bipa17"
    tool                                  = "terraform"
    cidr_block                            = "10.0.0.0/16"
  }
}




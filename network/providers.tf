# provider.tf
# ####################################################################################################
# 1. 테라폼 실행 환경 설정 블록
# ====================================================================================================
# 이 프로젝트에서 사용할 테라폼 자체의 설정과 필요한 플러그인들을 정의합니다.
terraform {
  required_version = ">= 1.0.0"
  # 프로젝트에서 사용할 클라우드 제공자(Provider) 목록을 정의합니다.
  required_providers {
    # 'aws'라는 이름으로 사용할 프로바이더 설정을 시작합니다.
    aws = {
      # 프로바이더 다운로드 경로입니다. (공식 HashiCorp 저장소의 AWS 플러그인)
      source  = "hashicorp/aws"
      
      # 사용할 버전을 지정합니다. 
      # ~> 5.0의 의미: 5.0 이상 버전 중 가장 최신 패치 버전을 사용하겠다는 뜻입니다. (예: 5.1, 5.2 등)
      version = "~> 6.0"
      # version = "~> 5.80.0"
    }
  }
  backend "s3" {
    bucket         = "bipa17-instructor-bucket"                             # 위에서 만든 S3 버킷 이름
    key            = "TerraformState/Lab/create-vpc/terraform.tfstate"  # 버킷 내 저장 경로
    region         = "ap-south-1"                                           # 리전
    dynamodb_table = "ian-terraform-lock-table"                             # DynamoDB 테이블 이름
    encrypt        = true                                                   # 상태 파일 암호화 여부
  }
}

# AWS 프로바이더 설정 블록
provider "aws" {
  # 인프라가 생성될 물리적 위치(리전)를 지정합니다.
  region = "ap-south-1" 
}


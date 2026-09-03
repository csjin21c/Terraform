locals {
  tags_header = var.baseInfo.owner !="" && var.baseInfo.project !="" ? "${var.baseInfo.owner}-${var.baseInfo.project}-" : (
                var.baseInfo.owner =="" && var.baseInfo.project !="" ? "${var.baseInfo.project}-" : (
                var.baseInfo.owner !="" && var.baseInfo.project =="" ? "${var.baseInfo.owner}-" : "default-"))

  default_tags = {
    Owner       = var.baseInfo.owner
    Project     = var.baseInfo.project
    Environment = var.baseInfo.environment
    Class       = var.baseInfo.class
    Tool        = var.baseInfo.tool
  }
}
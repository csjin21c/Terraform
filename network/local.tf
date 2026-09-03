locals {
  tags_header = var.baseInfo.owner !="" && var.baseInfo.project !="" ? "${var.baseInfo.owner}-${var.baseInfo.project}-" : (
                var.baseInfo.owner =="" && var.baseInfo.project !="" ? "${var.baseInfo.project}-" : (
                var.baseInfo.owner !="" && var.baseInfo.project =="" ? "${var.baseInfo.owner}-" : "default-"))
}
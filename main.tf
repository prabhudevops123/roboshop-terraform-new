module "instances" {
  for_each  = var.components
  source    = "git::https://github.com/prabhudevops123/tf-module-app-new.git"
  component = each.key
  env       = var.env
  tags      = merge(each.value["tags"], var.tags)
}


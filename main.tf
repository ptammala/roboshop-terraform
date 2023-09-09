module "components"{
  source            = "git::https://github.com/ptammala/tf-module-basic-test.git"
  for_each          = var.components

  zone_id           = var.zone_id
  security_group    = var.security_group
  name              = each.value["name"]
  instant_type      = each.value["instant_type"]

}


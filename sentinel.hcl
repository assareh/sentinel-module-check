# general
policy "require-all-resources-from-pmr" {
    source = "./require-all-resources-from-registry.sentinel"
    enforcement_level = "advisory"
}

# vmware
policy "restrict-vm-cpu-and-memory" {
    source = "./restrict-vm-cpu-and-memory.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-vm-disk-size" {
    source = "./restrict-vm-disk-size.sentinel"
    enforcement_level = "soft-mandatory"
}

# aws
policy "enforce-mandatory-tags" {
  source = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "restrict-docker-image" {
  source = "./restrict-docker-image.sentinel"
  enforcement_level = "soft-mandatory"
}

# common functions
module "tfplan-functions" {
    source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

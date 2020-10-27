policy "require-all-resources-from-pmr" {
    source = "./require-all-resources-from-registry.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-vm-cpu-and-memory" {
    source = "./restrict-vm-cpu-and-memory.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-vm-disk-size" {
    source = "./restrict-vm-disk-size.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "enforce-mandatory-tags" {
  source = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "soft-mandatory"
}

module "tfplan-functions" {
    source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

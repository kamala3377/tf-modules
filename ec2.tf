module "ec2" {
  source    = "./module/compute"
  subnet_id = module.vpc.sub_id // module.networking_mod_log_name.output_log_name
#   sg_id     = module.vpc.sg_id
}

// for every new module you have to give the terraform init
module "vpc" {
  source   = "./module/networking"
  vpc_cidr = "172.16.0.0/16"
  sub_cidr = "172.16.0.0/24"
}


// for every each new module you have to give the terrafom init

# subnet_id = module.vpc.sub_id
provider "aws" {
  region = "ap-south-1"
}

module "main-vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = "10.0.0.0/16"

  vpc_id = "${module.main-vpc.vpc_id}"
  /*
  vpc_id      = "${module.main-vpc.vpc_id}"
  */
}


module "main-subnet" {
  source        = "./modules/subnet"
  vpc_id = "${module.main-vpc.vpc_id}"
  depends_on = [ module.main-vpc ]
  /*
  vpc_id      = "${module.main-vpc.vpc_id}"
  */
}

//--------------------------------------------------------------------
// Modules
module "instance_module" {
  source  = "app.terraform.io/ppresto_ptfe/instance-module/aws"
  version = "1.0.6-k-cidr"

  egress_cidr_block = "0.0.0.0/0"
  ingress_cidr_block = "157.131.174.226/32"
  instance_type = "t2.micro"
  namespace = "ppresto"
  public = "true"
  region = "us-west-2"
}

//--------------------------------------------------------------------
// Modules
module "instance_module" {
  source  = "app.terraform.io/ppresto_ptfe/instance-module/aws"
  version = "1.0.4-k-cidr"
  instance_type = "m4.large"
  ingress_cidr_block = "157.131.174.0/24"
}

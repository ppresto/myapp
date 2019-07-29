//--------------------------------------------------------------------
// Modules
module "instance" {
  source  = "app.terraform.io/Patrick/instance/aws"
  version = "1.3"

  count              = 2
  ingress_cidr_block = "157.131.174.226/32"
  name_prefix        = "ppresto-mylinuxhost"
}

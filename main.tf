//--------------------------------------------------------------------
// Modules
module "instance_module" {
  source  = "app.terraform.io/ppresto_ptfe/instance-module/aws"
  version = "1.0.3"

  namespace = "ppresto"
}

output "IP Address" {
    value = "${module.instance_module.public_ip}"
}

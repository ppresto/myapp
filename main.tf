//--------------------------------------------------------------------
// Modules
module "instance" {
  source  = "app.terraform.io/Patrick/instance/azure"
  version = "1.0"

  count_linux = 0
  count_windows = 1
  dns_prefix = "patrickwindowshost"
}
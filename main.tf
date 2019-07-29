//--------------------------------------------------------------------
// Modules
module "azure_instance" {
  source  = "app.terraform.io/Patrick/azure_instance/azure"
  version = "1.0"

  count_linux   = 0
  count_windows = 1
  dns_prefix    = "ppresto-myazurewinhost"
}

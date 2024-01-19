module "RG" {
  source = "../RG"
  RG     = var.Rg
}
module "VNET" {
  source     = "../VNET"
  VNET       = var.Vnet
  sub        = var.Sub
  depends_on = [module.RG]

}
module "Public_IP" {
  source     = "../Public IP"
  pip        = var.Pip
  depends_on = [module.RG]

}
module "Bastion" {
  source     = "../Bastion"
  depends_on = [module.Public_IP]

}
module "LinuxVm" {
  source     = "../Linux VM"
  LinVM      = var.LinuxVM
  depends_on = [module.VNET]
}
module "SqlSrv" {
  source     = "../SQL_Server"
  depends_on = [module.RG]

}
module "SQLDB" {
  source     = "../SQL_Database"
  depends_on = [module.SqlSrv]
}
module "LoadBalancer" {
  source = "../LB"
  depends_on = [ module.Public_IP ]

}
VNET = {
  vnet1 = {
    name          = "testvnet"
    address_space = ["10.0.0.0/16"]
    location      = "centralindia"
  }
}

sub = {
  subnet1 = {
    name           = "fsub"
    address_prefix = "10.0.1.0/24"
  }
  subnet2 = {
    name           = "bsub"
    address_prefix = "10.0.2.0/24"
  }
  subnet3 = {
    name           = "AzureBastionSubnet"
    address_prefix = "10.0.3.0/26"
  }
}

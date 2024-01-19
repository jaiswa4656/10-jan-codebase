Rg = {
  rg1 = {
    name     = "Pradeep-RG"
    location = "Central india"
    tags = {
      Created_by = "Pradeep"
    }
  }
}

Vnet = {
  vnet1 = {
    name          = "testvnet"
    address_space = ["10.0.0.0/16"]
    location      = "centralindia"
  }
}

Sub = {
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
Pip = {
  pip1 = {
    name     = "Bastion-pip"
    location = "Centralindia"
    tags = {
      Created_by = "Pradeep"
    }
  }
  pip2 = {
    name     = "LB_PIP"
    location = "Centralindia"
    tags = {
      Created_by = "Pradeep"
    }
  }
}
LinuxVM = {
  LinuxVm1 = {
    name     = "FVM"
    nicname  = "FVM-nic"
    location = "centralindia"
    size     = "Standard_DS1_v2"
  }

  LinuxVm2 = {
    name     = "FVM1"
    nicname  = "FVM1-nic"
    location = "centralindia"
    size     = "Standard_DS1_v2"
  }
  LinuxVm3 = {
    name     = "BVM"
    nicname  = "BVM-nic"
    location = "centralindia"
    size     = "Standard_B1s"
  }
}


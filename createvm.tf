terraform {
  required_providers {
    virtualbox = {
      source  = "hashicorp/virtualbox"
      version = ">= 1.10.0"
    }
  }
}

resource "virtualbox_vm" "example" {
  name           = "Terraform-Learn-VM"
  ostype         = "Ubuntu_64" # Typ systemu operacyjnego
  memory         = 1024         # Pamięć RAM w MB
  cpus           = 2            # Liczba rdzeni procesora
  network_adapter {
    type          = "nat"
    nat_settings {
      network    = "nat_network"
    }
  }
  storage_controller {
    name          = "SATA Controller"
    bus           = "SATA"
  }
  storage_device {
    disk_size     = 10240        # Rozmiar dysku w MB
    disk_file     = "example-vm.vdi"
  }
}

resource "virtualbox_nat_network" "example" {
  name           = "nat_network"
  network        = "10.0.2.0/24"
}

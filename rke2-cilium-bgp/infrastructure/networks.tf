resource "scaleway_vpc" "main_vpc"{
    name = "main pvc"
}

resource "scaleway_vpc_private_network" "pn_priv" {
    name = "main_subnet"
    vpc_id = scaleway_vpc.main_vpc.id
    ipv4_subnet {
      subnet = "10.0.0.0/24"
    }
}
resource "scaleway_instance_server" "rke2_master" {
  count = 1
  type  = "DEV1-XL"
  image = "ubuntu_noble"
  name  = "rke2-master"

  private_network {
    pn_id = scaleway_vpc_private_network.pn_priv.id
  }
}

resource "scaleway_instance_server" "rke2_worker" {
  count = 3
  type  = "DEV1-L"
  image = "ubuntu_noble"
  name  = "rke2-worker-${count.index}"

  private_network {
    pn_id = scaleway_vpc_private_network.pn_priv.id
  }
}

resource "scaleway_instance_server" "gobgp_server" {
  count = 1
  type  = "DEV1-S"
  image = "ubuntu_noble"
  name  = "gobgp-server"

  private_network {
    pn_id = scaleway_vpc_private_network.pn_priv.id
  }
}

resource "scaleway_instance_server" "linux_client" {
  count = 1
  type  = "DEV1-S"
  image = "ubuntu_noble"
  name  = "linux-client"

  private_network {
    pn_id = scaleway_vpc_private_network.pn_priv.id
  }
}
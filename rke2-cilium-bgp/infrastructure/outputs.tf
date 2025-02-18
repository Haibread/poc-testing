data "scaleway_ipam_ip" "rke_master_private_ip_id" {
    resource {
      id = scaleway_instance_server.rke2_master[0].private_network.0.pnic_id
      type = "instance_private_nic"
    }
    type = "ipv4"
}

output "rke2_master_ip" {
  value = data.scaleway_ipam_ip.rke_master_private_ip_id.address
}

#output "rke2_worker_ips" {
#  value = scaleway_instance_server.rke2_worker[*].public_ip
#}

#output "gobgp_server_ip" {
#  value = scaleway_instance_server.gobgp_server[0].public_ip
#}

#output "linux_client_ip" {
#  value = scaleway_instance_server.linux_client[0].public_ip
#}

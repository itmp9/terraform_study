resource "vsphere_virtual_machine" "vm" {
  count            = 5
  name             = "terraform-vm-${formatdate("YYYYMMDDHHmm", timestamp())}-${count.index}"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.HDD.id

  num_cpus = 2
  memory   = 4096
  guest_id = "ubuntu64Guest"

  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = "vmxnet3"
  }

  disk {
    label = "disk0"
    size  = 20
  }

  cdrom {
    datastore_id = data.vsphere_datastore.datastore1.id
    path         = "/iso/ubuntu-22.04.3-live-server-amd64.iso"
  }
}

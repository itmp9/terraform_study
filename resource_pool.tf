data "vsphere_resource_pool" "pool" {
  name          = "localhost.localdomain/Resources"
  datacenter_id = data.vsphere_datacenter.dc.id
}

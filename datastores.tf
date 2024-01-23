data "vsphere_datastore" "HDD" {
  name          = "HDD"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_datastore" "datastore1" {
  name          = "datastore1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

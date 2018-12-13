locals {
  trunk_port_ids = "${element(concat(openstack_networking_trunk_v2.masters.*.port_id, list("")), 0)}"
  master_port_ids = ["${coalescelist(trunk_port_ids,openstack_networking_port_v2.masters.*.id)}"]
}

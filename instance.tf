resource "oci_core_instance" "oci_instance" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  shape               = var.instance_shape
  display_name        = var.instance_name

  metadata = {
    ssh_authorized_key = file(var.oci_public_key)
  }

  source_details {
    source_id   = var.image_ocid
    source_type = "image"

  }

  create_vnic_details {
    subnet_id                 = oci_core_subnet.wind_subnet.id
    display_name              = "wind-vnic"
    assign_public_ip          = true
    assign_private_dns_record = true
  }

}

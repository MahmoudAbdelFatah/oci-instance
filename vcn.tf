resource "oci_core_vcn" "wind_vcn" {
  cidr_block     = "10.0.0.0/16"
  compartment_id = var.compartment_ocid
  display_name   = "wind-vcn"
  dns_label      = "windvcn"
}
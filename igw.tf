
resource "oci_core_internet_gateway" "wind_igw" {
  compartment_id = var.compartment_ocid
  display_name   = "wind-igw"
  vcn_id         = oci_core_vcn.wind_vcn.id
}
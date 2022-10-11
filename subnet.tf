resource "oci_core_subnet" "wind_subnet" {
  availability_domain = var.availability_domain
  cidr_block          = "10.0.0.0/24"
  display_name        = "wind-subnet"
  dns_label           = "windvcn"
  security_list_ids   = [oci_core_vcn.wind_vcn.default_security_list_id]
  compartment_id      = var.compartment_ocid
  vcn_id              = oci_core_vcn.wind_vcn.id
  route_table_id      = oci_core_vcn.wind_vcn.default_route_table_id
  dhcp_options_id     = oci_core_vcn.wind_vcn.default_dhcp_options_id
}
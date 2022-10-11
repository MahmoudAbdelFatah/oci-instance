provider "oci" {
  region           = var.region
  user_ocid        = "..."
  fingerprint      = "..."
  private_key_path = "/home/mahmoud/.oci/oci_api_key.pem"
  tenancy_ocid     = "..."
}
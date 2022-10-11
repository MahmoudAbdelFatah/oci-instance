variable "region" {
  description = "OCI region"
}

variable "oci_private_key" {
}

variable "oci_public_key" {
}

# instance creation values
variable "compartment_ocid" {
}

# A shape is a template that determines the number of CPUs, 
# amount of memory, and other resources allocated to a newly created instance.
variable "instance_shape" {
}

#An image is a template of a virtual hard drive that determines the operating system and other software for an instance.
variable "image_ocid" {

}

variable "availability_domain" {

}

variable "instance_name" {

}
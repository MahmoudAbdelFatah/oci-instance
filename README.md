# OCI Instance Using Terraform

## Install OCI CLI
```
$ bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)"
```

## Setup OCI Configuration
```
$ oci set config
```
### Then set these attributes

1. user ocid
1. tenancy ocid
1. key file (path to your private keyfile)
1. region

### Access these configurations from this path `~/.oci/config`


## Add the API key to the user
- Open user details display page
- Open API keys under resources

![image-1](/images/image-1.png "This is a sample image.")

- Add API key
- Paste the public key 

![image-2](/images/image-2.png "This is a sample image.")

#### Create Child `instance` Compartment to contain my instance and take the `ocid` to be used as a `compartment_ocid`
#### Get the `image_ocid` from this [link](https://docs.oracle.com/en-us/iaas/images/image/329613dc-e938-4f75-b2fd-afce244d6514/), I used the `Canonical-Ubuntu-22.04-Minimal-2022.08.16-0` image.

### create the OCI provider in the specific region

```
provider "oci" {
  region           = var.region
  user_ocid        = "..."
  fingerprint      = "..."
  private_key_path = "/home/mahmoud/.oci/oci_api_key.pem"
  tenancy_ocid     = "..."
}
```

- Run terraform initialize to install OCI Plugin
```
$ terraform init
```
- Run terraform apply to create my resources on the OCI cloud
```
$ terraform apply --var-file dev.tfvars
```

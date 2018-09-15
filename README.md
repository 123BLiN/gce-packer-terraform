# gce-packer-terraform

Example repository to deploy instance built with packer using terraform on GCE

# How to use

Clone the repo.
Create google service account as described here https://www.packer.io/docs/builders/googlecompute.html#authentication and save JSON secret key
Required permissions:
[TODO]

## Packer

To build ubuntu image run:
```
cd ./packer
packer build -var service_account_json="[some_path_to_your_created_service_account_key].json" packer.json
```
(replace [some_path_to_your_created_service_account_key] with path to your actual key)

## Terraform 

```
cd ./terraform
terraform plan
terraform apply
```

it will ask for a list of networks/IPs to allow access for - provide the list in the format: ["10.10.10.10/32","192.168.1.0/24"]

URL to the default nginx page will be provided in the output. 
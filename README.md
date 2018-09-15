# gce-packer-terraform

Example repository to deploy instance built with packer using terraform on GCE

# How to use

Clone the repo.
Create google service account as described here https://www.packer.io/docs/builders/googlecompute.html#authentication and save JSON secret key
Required permissions:
[TODO]

## Packer

To build ubuntu image run:
`packer build -var service_account_json="[some_path_to_your_created_service_account_key].json" .\packer\packer.json`
(replace [some_path_to_your_created_service_account_key] with path to your actual key)

## Terraform 

[TODO]

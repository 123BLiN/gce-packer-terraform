variable "project_id" {
  description = "The ID of the Google Cloud project"
  default = "gce-packer-terraform"
}

variable "region" {
  description = "The region in which to deploy the Google Cloud project"
  default = "us-west1"
}

variable "region_zone" {
  description = "The region zone in which to deploy the Google Cloud project"
  default = "europe-west3-b"
}

variable "source_image" {
  description = "Image that we've built previously or some another one"
  default = "ngx-ubuntu"
}

variable "machine_type" {
  description = "The type of virtual machine used to deploy NGINX"
  default = "f1-micro"
}

variable "machine_name" {
  description = "The name of virtual machine"
  default = "nginx"
}

# must by list type, e.g. ["1.2.3.4/32","2.3.4.5/24"] etc.
variable "allow_connections_from" {
  type = "list"
  description = "A list of IPs to allow connections from to the ports 80 and 22"
}

variable "credentials_file_path" {
  description = "Path to the JSON file used to describe your account credentials"
  default = "../.gce/gcloud_credentials.json"
}
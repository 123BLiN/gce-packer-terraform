output "external_url" {
  description = "URL to default nginx page"
  value = "http://${google_compute_instance.nginx.network_interface.0.access_config.0.assigned_nat_ip}"
}
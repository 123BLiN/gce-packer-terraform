# Create instance
resource "google_compute_instance" "nginx" {
  count        = 1
  name         = "${var.machine_name}" 
  machine_type = "${var.machine_type}"
  zone         = "${var.region_zone}" 

  tags = ["allow-http-ssh-rule"]
 
  boot_disk {
    initialize_params {
      image = "${var.source_image}"
    }
  }
 
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}

# Configure firewall
resource "google_compute_firewall" "default" {
  name = "${var.machine_name}-http-ssh-rule"
  network = "default"
  description = "Allow access to ports 80 and 22 to our nginx instance for provided list of IPs"
  allow {
    protocol = "tcp"
    ports = [
      "80",
      "22",
    ]
  }
  source_ranges = ["${var.allow_connections_from}"]
  target_tags = [
    "allow-http-ssh-rule",
  ]
}
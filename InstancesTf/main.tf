resource "google_compute_instance" "main" {
  name         = "main"
  machine_type = "n1-standard-2"
  zone         = "us-central1-a"

  tags = ["all"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  // Local SSD disk


  network_interface {
    network = "test"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    sshKeys = "ubuntu:${file(var.ssh_public_key_filepath)}"
  }


}

provider "google" {
  credentials = "${file("D:/jsonfortf/credentials.json")}"
  project     = "sapient-duality-274414"
  region      = "us-central1"
}

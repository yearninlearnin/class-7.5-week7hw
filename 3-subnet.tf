resource "google_compute_subnetwork" "kakure" {
  name                     = "kakure-subnet"
  ip_cidr_range            = "10.70.11.0/24"
  region                   = "asia-northeast2"
  network                  = google_compute_network.sasaeru.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "kakure" {
  name                     = "kakure-subnet"
  ip_cidr_range            = "10.70.11.0/24"
  region                   = "asia-northeast2"
  network                  = google_compute_network.sasaeru.id
  private_ip_google_access = true
  
  # kakure means hidden or tucked away
  # IMPORTANT:
  # These CIDR ranges MUST NOT overlap
  # Do not modify unless you understand subnetting

  secondary_ip_range {
    range_name    = "k8s-pod-range"
    ip_cidr_range = "10.48.0.0/14"
  }

  secondary_ip_range {
    range_name    = "k8s-service-range"
    ip_cidr_range = "10.52.0.0/20"
  }

  depends_on = [
    google_compute_network.sasaeru
  ]
}


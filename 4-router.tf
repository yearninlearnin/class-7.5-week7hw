resource "google_compute_router" "router" {
  name    = "router"
  region  = "asia-northeast2"
  network = google_compute_network.sasaeru.id

  bgp {
    asn = 64514
  }

  depends_on = [
    google_compute_network.sasaeru
  ]
}


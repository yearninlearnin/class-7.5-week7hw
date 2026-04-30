output "vpc_name" {
  description = "Name of the vpc"
  value       = google_compute_network.sasaeru.name
}

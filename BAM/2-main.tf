#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket.html
resource "google_storage_bucket" "week7-memes-prod" {
  name          = "week7-memes-prod"
  location      = "asia-northeast2"
  force_destroy = true

  uniform_bucket_level_access = true

  website { 
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}  

resource "google_storage_bucket_iam_member" "week7-memes" {
  bucket = google_storage_bucket.week7-memes-prod.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

resource "google_storage_bucket_object" "index" {
  name   = "index.html"
  source = "${path.module}/index.html"
  bucket = google_storage_bucket.week7-memes-prod.name
  content_type = "text/html"
}

resource "google_storage_bucket_object" "error_404" {
  name   = "404.html"
  source = "${path.module}/error404.html"
  bucket = google_storage_bucket.week7-memes-prod.name
  content_type = "text/html"
}
#   cors {
#     origin          = ["http://image-store.com"]
#     method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
#     response_header = ["*"]
#     max_age_seconds = 3600
#   }
#   cors {
#     origin            = ["http://image-store.com"]
#     method            = ["GET", "HEAD", "PUT", "POST", "DELETE"]
#     response_header   = ["*"]
#     max_age_seconds   = 0
#   }
# }
#https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
resource "local_file" "favorite-food" {
  content  = "Picadillo with fried plantains & Materva soda!"
  filename = "${path.module}/favorite-food.txt"
}
provider "google" {
  credentials = "${file("C:\\Users\\Syed Khaleelullah\\Desktop\\devops-practice-411411-56763af19a8a.json")}"

  project     = var.project
  region      = var.region_name
  zone        = var.zone
}
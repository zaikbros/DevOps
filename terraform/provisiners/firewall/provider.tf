provider "google" {
  credentials = "${file("C:\\Users\\Syed Khaleelullah\\Desktop\\devops-practice-411411-56763af19a8a.json")}"

  project     = var.project
  region      = "us-central1"
  zone        = "us-central1-a"
}
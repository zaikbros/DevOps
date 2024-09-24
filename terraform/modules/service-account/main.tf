resource "google_service_account" "service_account" {
  account_id   = var.account_id
  display_name = var.display_name
}

resource "google_service_account_key" "mykey" {
  service_account_id = var.service_account_id
  public_key_type    = var.public_key_type
}

resource "google_project_iam_member" "service_account_policy" {
  project = var.project
  role    = var.service_account_user_policy_role
  member  = var.service_account_policy_member
}

resource "google_project_iam_member" "service_account_key_policy" {
  project = var.project
  role    = var.service_account_key_policy_role
  member  = var.service_account_key_member
}
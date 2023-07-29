resource "google_service_account" "github-actions" {
  account_id   = "github-actions"
  display_name = "Service Account"
  project      = google_project.viennacalling.name
}

resource "google_project_iam_member" "actions-gke-iam" {
  project = google_project.viennacalling.name
  role    = "roles/container.admin"
  member  = google_service_account.github-actions.member
}

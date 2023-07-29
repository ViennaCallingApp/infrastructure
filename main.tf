resource "google_project" "viennacalling" {
  name            = "viennacalling"
  billing_account = "01B520-81D507-CD00E3"
  project_id      = "viennacalling"
}

resource "google_container_cluster" "viennacalling" {
  name     = "viennacalling"
  project  = google_project.viennacalling.name
  location = "europe-west3"

  enable_autopilot = true

  network         = "default"
  networking_mode = "VPC_NATIVE"

  depends_on = [google_project_service.container]
}

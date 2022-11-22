resource "google_cloudbuild_trigger" "cloud-build-test" {
  location = var.cloud_build_region
  name     = var.cloud_build_name
  filename = "cloudbuild.yaml"

  github {
    owner = var.repo_owner
    name  = var.repo_name
    pull_request {
      branch = "^${var.branch_name}$"
    }
  }

}

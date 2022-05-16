resource "google_app_engine_application" "app" {
  project     = var.project_id
  location_id = var.location_id

  iap {
    // enabled is not documented
    // But add in https://github.com/hashicorp/terraform-provider-google/pull/6076
    enabled = true
    oauth2_client_id = var.oauth2_client_id
    oauth2_client_secret = var.oauth2_client_secret
  }
}
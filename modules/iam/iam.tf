resource "google_service_account" "dialogflow" {
  account_id   = "dialogflow"
  display_name = "Service Account"
}
resource "google_service_account" "firestore" {
  account_id   = "firestore"
  display_name = "Service Account"
}
resource "google_service_account" "cloudbuild" {
  account_id   = "cloudbuild"
  display_name = "Service Account"
}
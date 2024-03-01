resource "google_firestore_database" "catalog" {
  project                           = var.project_id
  name                              = "catalog"
  location_id                       = var.region
  type                              = "FIRESTORE_NATIVE"
  concurrency_mode                  = "OPTIMISTIC"
  app_engine_integration_mode       = "DISABLED"
  point_in_time_recovery_enablement = "POINT_IN_TIME_RECOVERY_ENABLED"
  delete_protection_state           = "DELETE_PROTECTION_ENABLED"
  deletion_policy                   = "DELETE"
}

resource "google_firestore_document" "mydoc" {
  project     = var.project_id
  database    = google_firestore_database.catalog.name
  collection  = "somenewcollection"
  document_id = "my-doc-id"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}"
}
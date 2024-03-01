resource "google_pubsub_topic" "update-catalog" {
  name = "update-catalog"
}

resource "google_cloud_scheduler_job" "update-catalog" {
  name        = "update-catalog"
  description = "update-catalog"
  schedule    = "0 0 * * MON,THU"

  pubsub_target {
    topic_name = google_pubsub_topic.update-catalog.id
    data       = base64encode("do update!")
  }
}
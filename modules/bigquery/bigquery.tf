resource "google_bigquery_dataset" "default" {
  dataset_id                  = "tintatoner"
  friendly_name               = "tintatoner"
  description                 = "Catalog for tintatoner sevilla"
  location                    = var.region
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }
}

resource "google_bigquery_table" "default" {
  dataset_id = google_bigquery_dataset.default.dataset_id
  table_id   = "chatbot"

  time_partitioning {
    type = "DAY"
  }

  labels = {
    env = "default"
  }
  schema = <<EOF
[
  {
    "name": "sessionId",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "sessionId"
  },
  {
    "name": "userMessage",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "userMessage"
  },
  {
    "name": "botMessage",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "botMessage"
  },
  {
    "name": "intentDetectionConfidence",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "intentDetectionConfidence"
  },
  {
    "name": "date",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "date"
  },
]
EOF

}
resource "google_cloudbuild_trigger" "chatbot" {
  name        = "chatbot"
  location    = "var.region"
  serviceAccount = "var.serviceAccount"
  github {
    owner = "var.owner"
    name  = "chatbot"
    push {
      branch = "^main$"
    }
  }

  filename = "cloudbuild.yaml"
}

resource "google_cloudbuild_trigger" "chatbot-back" {
  name        = "chatbot-back"
  location    = "var.region"
  serviceAccount = "var.serviceAccount"
  github {
    owner = "var.owner"
    name  = "chatbot-back"
    push {
      branch = "^main$"
    }
  }

  filename = "cloudbuild.yaml"
}

resource "google_cloudbuild_trigger" "catalog-updater" {
  name        = "catalog-updater"
  location    = "var.region"
  serviceAccount = "var.serviceAccount"
  github {
    owner = "var.owner"
    name  = "catalog-updater"
    push {
      branch = "^main$"
    }
  }

  filename = "cloudbuild.yaml"
}

resource "google_cloudbuild_trigger" "fullfilment" {
  name        = "fullfilment"
  location    = "var.region"
  serviceAccount = "var.serviceAccount"
  github {
    owner = "var.owner"
    name  = "fullfilment"
    push {
      branch = "^main$"
    }
  }

  filename = "cloudbuild.yaml"
}
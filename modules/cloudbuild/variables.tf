variable "project_id"{
    type = string
    description = "project id to create trigger"
}

variable "region"{
    type = string
    description = "region to create trigger"
}

variable "owner"{
    type = string
    description = "repository owner"
}

variable "serviceAccount"{
    type = string
    description = "serviceAccount to run deploys"
}
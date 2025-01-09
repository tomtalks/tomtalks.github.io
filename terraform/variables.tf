variable SERVICE_NAME {
  type        = string
}

variable ENDPOINT {
  type        = string
  default     = "ovh-eu"
}

variable APPLICATION_KEY {
  type        = string
}
variable APPLICATION_SECRET {
  type        = string
}
variable OVH_CLOUD_PROJECT_KUBE_NAME {
  type        = string
}

variable CONSUMER_KEY {
  type        = string
}

variable K8S_VERSION {
  type        = string
  default     = "1.27"
}

variable OVH_REGION {
  type       = string
  default    = "GRA9"
}

variable OVH_FLAVOR_NAME {
  type       = string
  default    = "d2-4"
}

variable NODES {
  type       = number
  default    = 1
}

variable MAX_NODES {
  type       = number
  default    = 1
}

variable MIN_NODES {
  type       = number
  default    = 1
}

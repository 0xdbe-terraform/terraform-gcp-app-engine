variable "project_id" {
  type        = string
  description = "Identifier of your project"
}

variable "location_id" {
  type        = string
  description = "Location Identifier of your project"
  default     = "us-central"
}

variable "iap_enable" {
  type        = bool
  description = "enable or not IAP for this App Engine"
}

variable "oauth2_client_id" {
  type        = string
  description = "Client ID used by IAP"
  default     = ""
}

variable "oauth2_client_secret" {
  type        = string
  description = "Client Secret used by IAP"
  default     = ""
}


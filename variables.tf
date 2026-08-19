variable "bucket_name" {
  type = string
}

variable "region" {
  type = string
}

variable "client" {
  type = string
}

variable "environment" {
  type = string
}

variable "purpose" {
  type = string
}

variable "versioning" {
  type = bool
}

variable "encryption" {
  type = bool
}

variable "lifecycle_days" {
  type = number
}

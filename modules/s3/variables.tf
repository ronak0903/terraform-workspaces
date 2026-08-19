variable "bucket_name" {
  type = string
}

variable "region" {
  type = string
}

variable "versioning" {
  type    = bool
  default = true
}

variable "encryption" {
  type    = bool
  default = true
}

variable "lifecycle_days" {
  type    = number
  default = 30
}

variable "tags" {
  type    = map(string)
  default = {}
}

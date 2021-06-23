variable "tags" {
  type = map(string)
}

variable "table_name" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "read_principals" {
  default = []
  type    = list(string)
}

variable "cycle_objects_to_standard_ia" {
  description = "Whether to cycle S3 objects to Standard-IA after 30 days (reduces costs if lookups are infrequent)"

  type    = bool
  default = true
}

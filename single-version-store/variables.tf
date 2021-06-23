variable "name" {
  description = "The name of the VHS instance"
  type        = string
}

variable "bucket_name_prefix" {
  description = "A prefix to the S3 bucket name that stores the values"
  default     = ""
  type        = string
}

variable "table_name_prefix" {
  description = "A prefix to the DynamoDB table that stores the keys"
  default     = ""
  type        = string
}

variable "table_name" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "tags" {
  type = map(string)
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

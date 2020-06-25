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

variable "tags" {
  type = map(string)
}

variable "table_name" {
  description = "Overrides default naming scheme to use specified table name"
  type = string
  default = ""
}

variable "bucket_name" {
  description = "Overrides default naming scheme to use specified bucket name"
  type = string
  default = ""
}
variable "name" {
  description = "The name of the VHS instance"
}

variable "bucket_name_prefix" {
  description = "A prefix to the S3 bucket name that stores the values"
  default     = ""
}

variable "table_name_prefix" {
  description = "A prefix to the DynamoDB table that stores the keys"
  default     = ""
}
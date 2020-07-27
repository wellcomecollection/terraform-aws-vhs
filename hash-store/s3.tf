resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name_prefix}${lower(var.name)}"

  tags = var.tags

  lifecycle_rule {
    id      = "objects_to_standard_ia"
    enabled = var.cycle_objects_to_standard_ia

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }
  }
}

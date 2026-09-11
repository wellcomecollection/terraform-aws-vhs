resource "aws_dynamodb_table" "table" {
  name             = local.table_name
  hash_key         = "id"
  range_key        = "version"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  billing_mode = "PAY_PER_REQUEST"

  deletion_protection_enabled = var.deletion_protection_enabled

  point_in_time_recovery {
    enabled = var.point_in_time_recovery_enabled
  }

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "version"
    type = "N"
  }

  tags = merge(
    var.tags,
    {
      Name = local.table_name
    }
  )
}

data "aws_iam_policy_document" "read_policy" {
  # This is based on the AmazonDynamoDBReadOnlyAccess policy
  statement {
    actions = [
      "dynamodb:BatchGetItem",
      "dynamodb:DescribeTable",
      "dynamodb:GetItem",
      "dynamodb:ListTables",
      "dynamodb:Query",
      "dynamodb:Scan",
    ]

    resources = [
      aws_dynamodb_table.table.arn
    ]
  }

  statement {
    actions = [
      "s3:List*",
      "s3:Get*",
    ]

    resources = [
      "${aws_s3_bucket.bucket.arn}/",
      "${aws_s3_bucket.bucket.arn}/*",
    ]
  }
}

data "aws_iam_policy_document" "full_access_policy" {
  statement {
    actions = [
      "dynamodb:*",
    ]

    resources = [
      aws_dynamodb_table.table.arn,

      # Allow access to the GSIs on the table
      "${aws_dynamodb_table.table.arn}/*",
    ]
  }

  statement {
    actions = [
      "s3:List*",
      "s3:Get*",
      "s3:PutObject*",
    ]

    resources = [
      "${aws_s3_bucket.bucket.arn}/",
      "${aws_s3_bucket.bucket.arn}/*",
    ]
  }
}

data "aws_iam_policy_document" "dynamodb_update_policy" {
  statement {
    actions = [
      "dynamodb:UpdateItem",
      "dynamodb:PutItem",
    ]

    resources = [
      aws_dynamodb_table.table.arn,
    ]
  }
}

resource "aws_iam_role" "assumable_read_role" {
  name               = "${var.name}-assumable_read_role"
  assume_role_policy = data.aws_iam_policy_document.assume_read_role.json
}

data "aws_iam_policy_document" "assume_read_role" {
  statement {
    actions = [
      "sts:AssumeRole",
    ]

    principals {
      identifiers = var.read_principals
      type        = "AWS"
    }
  }
}

resource "aws_iam_role_policy" "read_role_policy" {
  role   = aws_iam_role.assumable_read_role.id
  policy = data.aws_iam_policy_document.read_policy.json
}

# terraform-aws-vhs

[![Build status](https://badge.buildkite.com/e003c26e84856dea7d37fc77c9f6e393d3007984bfb6c80f96.svg?main)](https://buildkite.com/wellcomecollection/terraform-module-terraform-aws-vhs)

Creates the storage infrastructure required to use an instance of the HybridStore library in
[Wellcome Collection's Scala Storage library][scala_storage_repo].

## Usage

You can either use a `hash-store` or `hash-range-store` implementation, which must
match the type of store you're using in your application.

*   A *hash store* is for a VHS whose DynamoDB table only has a hash key.
    Use this if you only want to store the latest version of a record.

*   A *hash store* is for a VHS whose DynamoDB table has a hash key and a range key.
    Use this if you want to store every version of a record.

```hcl2
# hash store
module "example_implementation" {
  source = "git::github.com/wellcomecollection/terraform-aws-vhs.git//hash-store?ref=v2.0.0"
  name = "big_store"
  table_name_prefix = "org-vhs"
  bucket_name_prefix = "org-vhs"
}

# hash range store
module "example_implementation" {
  source = "git::github.com/wellcomecollection/terraform-aws-vhs.git//hash-range-store?ref=v2.0.0"
  name = "big_store"
  table_name_prefix = "org-vhs"
  bucket_name_prefix = "org-vhs"
}
```

## Outputs
- `dynamodb_update_policy` - Policy that allows UPDATE and PUT on the DynamoDB
- `read_policy` - Policy allowing you to read from the DynamoDB table and S3 bucket
- `full_access_policy` - Policy allowing full access to the DynamoDB table and S3 bucket
- `table_name` - Name of the DynamoDB table
- `table_arn` - ARN of the DynamoDB table
- `table_stream_arn` - Stream ARN of the DynamoDB table
- `bucket_name` - Name of the S3 bucket
- `bucket_arn` - ARN of the S3 bucket

[scala_storage_repo]: https://github.com/wellcometrust/scala-storage
# terraform-aws-template

[![Build Status](https://travis-ci.org/wellcomecollection/{terraform_module_name}.svg?branch=master)](https://travis-ci.org/wellcomecollection/terraform-aws-vhs)

Creates the storage infrastructure required to use an instance of the HybridStore library in
[Wellcome Collection's Scala Storage library][scala_storage_repo].

## Usage

```hcl2

module "example_implementation" {
  source = "../../"
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
module "example_implementation" {
  source = "../../"
  name = "big_store"
  table_name_prefix = "org-vhs"
  bucket_name_prefix = "org-vhs"
}
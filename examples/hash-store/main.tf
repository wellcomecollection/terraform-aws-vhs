module "example_implementation" {
  source = "../../hash-store"
  name = "hash_store"
  table_name_prefix = "org-vhs"
  bucket_name_prefix = "org-vhs"
}
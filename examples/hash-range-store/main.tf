module "example_implementation" {
  source = "../../hash-range-store"
  name = "hash_range_store"
  table_name_prefix = "org-vhs"
  bucket_name_prefix = "org-vhs"
  force_destroy = true
}
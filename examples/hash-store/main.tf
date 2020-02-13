module "example_implementation" {
  source = "..\/..\/hash-range-store"
  name = "single_version_store"
  table_name_prefix = "org-vhs"
  bucket_name_prefix = "org-vhs"
}
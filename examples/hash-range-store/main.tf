module "example_implementation" {
  source = "..\/..\/hash-store"
  name = "multi_version_store"
  table_name_prefix = "org-vhs"
  bucket_name_prefix = "org-vhs"
}
module "example_implementation" {
  source             = "../../multi-version-store"
  name               = "multi_version_store"
  table_name_prefix  = "org-vhs"
  bucket_name_prefix = "org-vhs"

  tags = {
    Name = "ACME Corp"
  }
}

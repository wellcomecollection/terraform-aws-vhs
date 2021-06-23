module "example_implementation" {
  source             = "../../single-version-store"
  name               = "single_version_store"
  table_name_prefix  = "org-vhs"
  bucket_name_prefix = "org-vhs"

  tags = {
    Name = "ACME Corp"
  }
}

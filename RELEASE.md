RELEASE_TYPE: minor

Add a `prevent_destroy` which is passed to the [`lifecycle` meta-argument](https://www.terraform.io/docs/language/meta-arguments/lifecycle.html).
It defaults to `true` to prevent those resources from being deleted accidentally.

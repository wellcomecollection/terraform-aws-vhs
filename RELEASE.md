RELEASE_TYPE: major

Rename the modules to `single-version-store` and `multi-version-store` to better emphasise the difference between them.

Bin the `*prefix`-style naming, and force callers to declare the names directly.

Don't create the assumable read role if there are no principals allowed to assume it.
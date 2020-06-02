RELEASE_TYPE: minor

Restrict the S3 permissions on the exported policies, so VHS workers can only modify objects inside the buckets, rather than the buckets themselves.
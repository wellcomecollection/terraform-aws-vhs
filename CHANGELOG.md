# CHANGELOG

## v3.5.3 - 2021-01-18

Add the `Name` tag to DynamoDB tables created by this module.

## v3.5.2 - 2020-09-24

Bump for release.

## v3.5.1 - 2020-07-27

Fix a bug in the variable definitions of the two VHS modules.

## v3.5.0 - 2020-07-27

Automatically cycle S3 objects in VHS to the Standard-IA storage class after 30 days.
This reduces the cost of running a VHS.

You can disable this behaviour by setting `cycle_objects_to_standard_ia = false`.

## v3.4.3 - 2020-07-02

Give permission to assume read role.

## v3.4.2 - 2020-06-30

Remove principals section, it breaks things.

## v3.4.1 - 2020-06-26

fix: principals should be block not argument

## v3.4.0 - 2020-06-26

Allow setting `read_principals` from variable.

## v3.3.1 - 2020-06-25

actually use var names in hash range store

## v3.3.0 - 2020-06-25

Adds table_name, and bucket_name variables to the hash range store to allow the sepcified names to override the existing naming scheme.

## v3.2.1 - 2020-06-02

Fix read access in the read-write policy.

## v3.2.0 - 2020-06-02

Add support for tags in both hash-range-store and hash-store.

## v3.1.0 - 2020-06-02

Restrict the S3 permissions on the exported policies, so VHS workers can only modify objects inside the buckets, rather than the buckets themselves.

## v3.0.0 - 2020-06-02

Differentiate between hash-store and has-range-store for the different implementations within the scala-storage library.

## v1.0.0 - 2020-02-12

Initial release.

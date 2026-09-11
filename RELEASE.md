RELEASE_TYPE: minor

Add `deletion_protection_enabled` and `point_in_time_recovery_enabled` variables
to both stores, so a VHS table can be protected against accidental deletion and
restored to a point in time.

Both default to `false`, which is what the module did before, so existing
callers see no change.

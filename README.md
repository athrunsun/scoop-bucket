# Personal scoop bucket [![regular_build](https://github.com/athrunsun/scoop-bucket/actions/workflows/regular-build.yaml/badge.svg)](https://github.com/athrunsun/scoop-bucket/actions/workflows/regular-build.yaml)

This [scoop](https://github.com/ScoopInstaller/Scoop) bucket contains apps that don't exist in the official main or extra buckets.

# How do I use this bucket?
First add this bucket:

```powershell
scoop bucket add <bucket_name> https://github.com/athrunsun/scoop-bucket.git
```

You can give `bucket_name` whatever you like, as long as it doesn't conflict with other existing bucket names.

Then you can install apps using:

```powershell
scoop install <bucket_name>/<app_name>
```

Short form `scoop install <app_name>` also works as long as `<app_name>` doesn't conflict with other app names.

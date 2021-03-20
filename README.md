# Personal scoop bucket [![Build Status](https://dev.azure.com/okampfer/scoop-bucket-build/_apis/build/status/scoop-bucket-build?branchName=master)](https://dev.azure.com/okampfer/scoop-bucket-build/_build/latest?definitionId=6&branchName=master)

This [scoop](https://github.com/lukesampson/scoop) bucket contains apps that don't exist in the official main or extra buckets.

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

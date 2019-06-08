# Personal scoop bucket [![Build Status](https://dev.azure.com/okampfer/scoop-bucket/_apis/build/status/athrunsun.scoop-bucket?branchName=master)](https://dev.azure.com/okampfer/scoop-bucket/_build/latest?definitionId=1&branchName=master)
This [scoop](https://github.com/lukesampson/scoop) bucket contains apps that don't exist in the official main or extra buckets.

## How do I use this bucket?
First add this bucket:

```powershell
scoop bucket add <bucket_name> https://github.com/athrunsun/scoop-bucket.git
```

You can give `bucket_name` whatever you like, as long as it doesn't conflict with other bucket names.

Then you can install apps:

```powershell
scoop install <bucket_name>/<app_name>
```

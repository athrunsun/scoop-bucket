function isAutoUpdateAvailable {
    Param
    (
        [Object[]] $checkUpdateResultArray
    )

    foreach ($item in $checkUpdateResultArray) {
        if ($item.ToString().Contains("autoupdate available")) {
            Write-Host "Update available"
            return $TRUE
        }
    }

    Write-Host "No update available"
    return $FALSE
}

$filenames = @(Get-ChildItem -Path $env:GITHUB_WORKSPACE -File -Force)

foreach ($filename in $filenames) {
    if ($filename.Name.EndsWith(".json")) {
        $appName = $filename.Name.Split(".")[0]
        Write-Host "Checking update for $appName..."

        $result = &"$env:SCOOP_REPO_PATH/bin/checkver.ps1" -App $appName -Dir . 6>&1

        # For debugging on local machine
        # $result = &"D:/bedroom/local/app/scoop/apps/scoop/current/bin/checkver.ps1" -App $appName -Dir . 6>&1

        if (isAutoUpdateAvailable $result) {
            $updateVersion = $result[1]
            Write-Host "Will update $appName to version $updateVersion..."
            &"$env:SCOOP_REPO_PATH/bin/checkver.ps1" -App $appName -Dir . -u

            # For debugging on local machine
            # &"D:/bedroom/local/app/scoop/apps/scoop/current/bin/checkver.ps1" -App $appName -Dir . -u

            Write-Host "Updated $appName to version $updateVersion"
            git add "$appName.json"
            git status 2>&1
            git -c user.name='github_devops' -c user.email='github_devops' commit -m "Update $appName to version $updateVersion" 2>&1
        }
    }
}

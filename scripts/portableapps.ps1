param($dir)

Get-ChildItem -Path "$dir\\\$PLUGINSDIR\*" -Recurse -Force | Remove-Item -Recurse -Force
Remove-Item -Path "$dir\\\$PLUGINSDIR" -Recurse -Force

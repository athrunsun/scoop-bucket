param($dir, $version)

# Second extraction
$output = 7z x $dir\chrome.7z "-o$dir"
rm $dir\chrome.7z

Move-Item -Path "$dir\Chrome-bin\chrome.exe" -Destination "$dir\chrome.exe"

# Copy then remove, instead of moving directly. Pay attention to `-Container` switch.
# https://stackoverflow.com/questions/5432290/how-to-use-powershell-copy-item-and-keep-structure
Get-ChildItem -Path "$dir\Chrome-bin\$version" | Copy-Item -Destination "$dir" -Recurse -Container
Get-ChildItem -Path "$dir\Chrome-bin\*" -Recurse -Force | Remove-Item -Recurse -Force
Remove-Item -Path "$dir\Chrome-bin" -Recurse -Force

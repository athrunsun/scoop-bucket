param($dir, $version)

# Second extraction
$output = 7z x $dir\chrome.7z "-o$dir"
rm $dir\chrome.7z

Move-Item -Path "$dir\Chrome-bin\chrome.exe" -Destination "$dir\chrome.exe"
Get-ChildItem -Path "$dir\Chrome-bin\$version\*.*" -Recurse | Move-Item -Destination "$dir"

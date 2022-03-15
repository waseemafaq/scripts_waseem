if (test-path C:\nofile.txt) {
    $file = Get-Content c:\nofile.txt
}
else {
    Write-Warning "File katie chai?"
}
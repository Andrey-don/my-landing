$path = "C:\Users\profi\Documents\Project\my-landing\logs\chats"

Write-Host "Watching chat folder..."

while ($true) {

$files = Get-ChildItem $path -Filter *.html

foreach ($file in $files) {

cd C:\Users\profi\Documents\Project\my-landing

git add logs/chats/*.html
git commit -m "Update chat archive" 2>$null
git push

}

Start-Sleep -Seconds 10

}
$extensions = @("*.jpg","*.jpeg","*.png","*.tif","*.tiff","*.webp")

foreach ($ext in $extensions) {
    Get-ChildItem -Path . -Filter $ext | ForEach-Object {

        $input = $_.FullName
        $name = $_.BaseName
        $output = "$name.webp"

        magick "$input" `
            -resize "2400x2400>" `
            -strip `
            -quality 90 `
            -define webp:method=6 `
            "$output"

        Write-Host "Processed $($_.Name) -> $output"
    }
}
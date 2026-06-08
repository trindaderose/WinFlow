$extensions = @("*.jpg", "*.jpeg", "*.png", "*.tif", "*.tiff", "*.webp")

$baseName = Read-Host "Digite o nome base das imagens"

if ([string]::IsNullOrWhiteSpace($baseName)) {
    Write-Host "Nome base inválido. O processo foi cancelado."
    exit
}

$images = foreach ($ext in $extensions) {
    Get-ChildItem -Path . -Filter $ext -File
}

$images = $images | Sort-Object Name

$index = 1

foreach ($image in $images) {
    $inputPath = $image.FullName
    $outputName = "$baseName$index.webp"
    $outputPath = Join-Path -Path $image.DirectoryName -ChildPath $outputName

    magick "$inputPath" `
        -resize "2400x2400>" `
        -strip `
        -quality 90 `
        -define webp:method=6 `
        "$outputPath"

    Write-Host "Processed $($image.Name) -> $outputName"

    $index++
}
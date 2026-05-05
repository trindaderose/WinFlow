param(
    [int]$quality = 85
)

Write-Host "Convertendo imagens para WEBP com qualidade $quality..." -ForegroundColor Cyan

# Extensões suportadas
$extensions = @("*.jpg", "*.jpeg", "*.png", "*.gif", "*.bmp", "*.tiff")

foreach ($ext in $extensions) {
    Get-ChildItem -Path . -Filter $ext -File | ForEach-Object {
        $input = $_.FullName
        $output = "$($_.DirectoryName)\$($_.BaseName).webp"

        Write-Host "Convertendo: $($_.Name) → $($_.BaseName).webp"

        # Comando do ImageMagick
        magick "$input" -quality $quality "$output"
    }
}

Write-Host "Finalizado!" -ForegroundColor Green

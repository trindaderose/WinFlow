# Caminho para o executável do Adobe Illustrator | AISniffer
$appPath = "C:/Program Files/Adobe/Adobe Illustrator 2020/Support Files/Contents/Windows/AISniffer.exe"

# Verifique se o arquivo AISniffer.exe existe
if (Test-Path $appPath) {
    Write-Host "AISniffer.exe encontrado no caminho: $appPath"
} else {
    Write-Host "AISniffer.exe não encontrado. Verifique o caminho e tente novamente."
    exit
}

# Adicionar aplicativo à lista de gráficos (Configurações -> Sistema -> Tela -> Gráficos)
$regPath = "HKCU:/Software/Microsoft/DirectX/UserGpuPreferences"
$regName = "$appPath"

if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force
}

# Definir para Alto Desempenho (Valor 2 = Alto Desempenho)
Set-ItemProperty -Path $regPath -Name $regName -Value "GpuPreference=2"

Write-Host "AISniffer.exe foi adicionado à lista de Gráficos com configuração de Alto Desempenho."

Write-Host "Processo concluído. Aproveite! 💜 "

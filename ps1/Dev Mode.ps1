# Habilitar o Modo Desenvolvedor
$DeveloperMode = Get-WindowsOptionalFeature -Online -FeatureName "DeveloperMode" 
if ($DeveloperMode.State -eq "Disabled") {
    Enable-WindowsOptionalFeature -Online -FeatureName "DeveloperMode" -NoRestart
    Write-Host "Modo Desenvolvedor habilitado. Reinicie o computador para aplicar as mudanças."
} else {
    Write-Host "Modo Desenvolvedor já está habilitado."
}

# Função 'sudo' para simular a execução de comandos como administrador
Function sudo {
    param (
        [Parameter(Mandatory=$true)]
        [string]$Command
    )
    Start-Process powershell -ArgumentList "-Command $Command" -Verb RunAs
}

Write-Host "Função 'sudo' criada. Agora você pode usar 'sudo' para rodar comandos com privilégios elevados."

# Caminho para o arquivo de áudio
#.\ representa a mesma pasta do script
$caminhoAudio = ".\musica.wav"
# Verificar se o arquivo de áudio existe
# Test-Path verifica se o caminho existe
if (Test-Path $caminhoAudio) {
    # Caso exista cria um objeto SoundPlayer
    $player = New-Object System.Media.SoundPlayer
    # Definir o caminho do arquivo de áudio
    $player.SoundLocation = $caminhoAudio
    # Reproduzir o áudio
    $player.PlaySync()    
} else {
    Write-Host "O arquivo de áudio não foi encontrado."
}
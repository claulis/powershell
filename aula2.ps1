$mensagem = @" 
Olá,Bem-vindo ao PowerShell! 
Exemplos de utilização de variáveis
"@


$nome = "Claudio"
$nome


$idade = 44
$dataHoje = Get-Date


#Write-Host $mensagem  $mensagem2

#  Arrays
$listaNumeros= 1,2,3,4,5
Write-Host $listaNumeros
$listaNomes = "Jo�o","Jos�","Maria"
Write-Host $listaNumeros[1]
Write-Host $listaNomes[2]
$listaNomes[2] = "Rita"
Write-Host $listaNomes[2]
$listaNomes+="Roberto Carlos"
Write-Host $listaNomes[3]
Write-Host $listaNumeros  $listaNomes


# Criar uma lista vazia
$listaNomes = New-Object System.Collections.ArrayList

# Adicionar nomes � lista usando o m�todo .Add()
$listaNomes.Add("Jo�o")
$listaNomes.Add("Jos�")
$listaNomes.Add("Maria")

# Exibir a lista de nomes
$listaNomes


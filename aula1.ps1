#Comando básicos Powershell

#-----Get-Help
Get-Help #serve para obter ajuda

Get-Help Get-Command #serve para explicar algum comando
#neste caso ajuda do Get-Command

Get-Help Get-Command -online 
#envia para a página da Microsoft

Get-Help Get-Service -online

#-----Get-Command
Get-Command #lista de todos os comandos

Get-Help Get-Command -Online

Get-Command * #retorna todo tipo de comando

Get-Command -Type Cmdlet 
# retorna os comandos do prompt, são comandos mais
# antigos 

Get-Command -Name dir #retorna o comando de um alias
#dir é um comando para listar pastas
#porem é um alias, o nome do comando verdadeiro é outro
#O nome verdadeiro é Get-ChildItem
#os dois funcionam igualmente

#-----Get-Service

Get-Service #lista de todos os serviços




Get-Help Get-Service

Get-Help Get-Service -Online

Get-Service * 
#todos os serviços no computador
Get-Service "net*" 
#Obter serviços que começam com "net"
Get-Service | Where-Object {$_.Status -eq "Running"} 
#onde -> Where-Obcjet
#o status - > $_.Status
# é ativo -> -eq "Running"

#-----Get-Process 
Get-Process #lista de todos os processos
Get-Process * #todos os processos
Get-Process winword, explorer | Format-List * 
#obter todas as informações sobre processos
#lista todas as propriedaes 

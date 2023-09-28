# Powershell

O **PowerShell** é uma solução de automação de tarefas **multiplataforma** que consiste em um shell de linha de comando, em uma **linguagem de script e uma estrutura de gerenciamento de configuração**. 

Ele pode ser executado no Windows, Linux e macOS. 

O PowerShell é amplamente utilizado para automatizar *tarefas repetitivas*, como gerenciamento de sistemas, administração de servidores, *gerenciamento de configurações e implantação de aplicativos*. Ele também pode ser usado para criar scripts personalizados que podem ser usados para automatizar tarefas específicas. 

## 8 funcionalidades do PowerShell:

**Gerenciamento de processos**: O comando `Get-Process` retorna informações sobre os processos em execução no sistema.

**Gerenciamento de serviços**: O comando `Get-Service` obtém informações sobre os serviços em execução no sistema.

**Gerenciamento da política de execução**: O comando `Set-ExecutionPolicy` define a política de execução do PowerShell para controlar a execução de scripts.

**Gerenciamento do registro do Windows**: O PowerShell permite acessar e modificar o registro do Windows usando comandos como `Get-ItemProperty`, `Set-ItemProperty`, `New-ItemProperty` e `Remove-ItemProperty`.

**Gerenciamento do Active Directory**: O PowerShell oferece uma ampla gama de comandos para gerenciar usuários, grupos, computadores e outros objetos no Active Directory¹.

**Automatização da instalação e configuração do software**: O PowerShell pode ser usado para automatizar a instalação e configuração de software em massa usando scripts personalizados¹.

**Análise e manipulação de dados**: O PowerShell possui recursos poderosos para analisar e manipular dados estruturados, como CSVs e JSONs, usando comandos como `Import-Csv`, `ConvertTo-Json`, `Select-Object` e `Where-Object`.

**Criação de módulos personalizados**: O PowerShell permite criar módulos personalizados contendo funções, variáveis e outros recursos reutilizáveis ​​que podem ser compartilhados entre scripts e sessões do PowerShell.

## Como usar o PowerShell no Windows

1. **Abra o PowerShell:**
   - Pressione a tecla `Windows` no teclado.
   - Comece a digitar "PowerShell".
   - Quando "Windows PowerShell" ou "PowerShell" aparecer nos resultados da pesquisa, clique nele para abrir a janela do PowerShell.

   Ou

   - Pressione `Win + X` e escolha "Windows PowerShell" ou "Windows PowerShell (Admin)" no menu que aparece.

2. **Executando scripts:**
   Além de comandos individuais, você pode criar e executar scripts no PowerShell. Para criar um script, basta criar um arquivo de texto com a extensão ".ps1" e adicionar os comandos PowerShell nele. Você pode executar o script no PowerShell usando o caminho para o arquivo ou usando o comando `.\NomeDoScript.ps1` se estiver no mesmo diretório.


>Além disso, lembre-se de que a partir do Windows 10, o Windows PowerShell foi substituído pelo PowerShell Core (também conhecido como PowerShell 7 ou superior), que é uma versão multiplataforma do PowerShell. Você pode instalar o PowerShell Core no Windows e em outros sistemas operacionais, se desejar.

## Como programar powershell

Para programar em PowerShell no Visual Studio Code (VS Code), considerando que você já tenha instalado, siga estas etapas:

2. **Instale a extensão do PowerShell:**
   - Abra o VS Code.
   - Vá para a seção de extensões clicando no ícone de quadrado com quatro quadrados pequenos à esquerda da barra lateral ou use o atalho `Ctrl+Shift+X`.
   - Na barra de pesquisa de extensões, digite "PowerShell" e procure pela extensão "PowerShell" desenvolvida pela Microsoft.
   - Clique em "Instalar" para instalar a extensão.

3. **Crie ou abra um arquivo PowerShell:**
   - Crie um novo arquivo PowerShell clicando em "Arquivo" -> "Novo Arquivo" e, em seguida, salve-o com a extensão ".ps1".
   - Ou abra um arquivo PowerShell existente usando "Arquivo" -> "Abrir Arquivo" e selecione o arquivo PowerShell desejado.

4. **Executar código PowerShell:**
   - Para executar o código PowerShell no VS Code, você pode clicar com o botão direito do mouse no editor e selecionar "Executar Script" ou usar o atalho `F5`.
   - Você também pode abrir o terminal integrado no VS Code (usando `Ctrl+`` ou "Exibir" -> "Terminal Integrado") e digitar os comandos diretamente no terminal.


> O VS Code também oferece recursos de depuração para código PowerShell. Você pode definir pontos de interrupção, inspecionar variáveis e passar pelo código passo a passo para solucionar problemas.

> Certifique-se também de que as configurações de execução de scripts estão adequadas ao nível de segurança necessário no seu ambiente. Por padrão, o Windows pode bloquear a execução de scripts não assinados, dependendo das configurações de política de execução. Você pode usar o comando `Set-ExecutionPolicy` no PowerShell para ajustar essas configurações.

## Programando em Powershell

### Principais comandos (aula1.ps1)

Os comandos mais utilizados no Powershell são:

1. **Get-Command:** Este comando permite listar todos os comandos disponíveis no PowerShell. Você pode filtrar os resultados para encontrar comandos específicos, como cmdlets, funções ou scripts.

   Exemplo:
   ```powershell
   Get-Command
   ```

2. **Get-Help:** O comando Get-Help é usado para obter informações de ajuda sobre outros comandos. Você pode usar este comando para entender como um comando funciona, quais parâmetros ele aceita e exemplos de uso.

   Exemplo:
   ```powershell
   Get-Help Get-Process
   ```

3. **Get-Service:** Este cmdlet permite listar os serviços em execução no sistema.

   Exemplo:
   ```powershell
   Get-Service
   ```

4. **Get-Process:** O Get-Process é usado para listar todos os processos em execução no sistema.

   Exemplo:
   ```powershell
   Get-Process
   ```

5. **Get-Item / Set-Item:** Esses comandos são usados para obter ou definir propriedades de itens do sistema de arquivos, como arquivos e pastas.

   Exemplo:
   ```powershell
   Get-Item C:\Exemplo\Arquivo.txt
   Set-Item C:\Exemplo\Arquivo.txt -ReadOnly $true
   ```

6. **Get-Content / Set-Content:** Esses cmdlets permitem ler e escrever o conteúdo de arquivos de texto.

   Exemplo:
   ```powershell
   Get-Content arquivo.txt
   Set-Content arquivo.txt "Novo conteúdo"
   ```

7. **New-Item:** Este cmdlet é usado para criar novos itens no sistema de arquivos, como arquivos ou pastas.

   Exemplo:
   ```powershell
   New-Item -ItemType File -Path C:\Exemplo\NovoArquivo.txt
   ```

8. **Remove-Item:** O Remove-Item é usado para excluir itens do sistema de arquivos.

   Exemplo:
   ```powershell
   Remove-Item C:\Exemplo\ArquivoParaExcluir.txt
   ```



### Variáveis (aula2.ps1)

No **PowerShell**, as variáveis são representadas por cadeias de caracteres de texto que começam com um cifrão (`$`), como `$a`, `$process` ou `$my_var`. Os nomes de variáveis não diferenciam maiúsculas de minúsculas e podem incluir espaços e caracteres especiais. 

Para criar uma nova variável, use uma instrução de atribuição para atribuir um valor à variável. Você não precisa declarar a variável antes de usá-la. **O valor padrão de todas as variáveis é `$null`**. 

Aqui estão alguns exemplos de como usar variáveis no PowerShell:

1. **Criar uma variável**: Use o operador `=` para atribuir um valor a uma variável. Por exemplo, `$nome = "João"` cria uma variável chamada `$nome` e atribui o valor `"João"` a ela.
2. **Acessar o valor de uma variável**: Use o nome da variável precedido por um cifrão (`$`) para acessar o valor armazenado nela. Por exemplo, `Write-Host $nome` exibirá o valor da variável `$nome` no console.
3. **Modificar o valor de uma variável**: Atribua um novo valor à variável usando o operador `=`. Por exemplo, `$nome = "Maria"` altera o valor da variável `$nome` para `"Maria"`.
4. **Remover uma variável**: Use o comando `Remove-Variable` seguido pelo nome da variável para removê-la. Por exemplo, `Remove-Variable -Name nome` remove a variável `$nome` do escopo atual.

Para exemplos práticos ver o arquivo `aulas2.ps1`.




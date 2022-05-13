## Consultas em banco de dados
Repositório com os exemplos práticos sobre Consultas em banco de dados utilizando linguagem SQL

Conteúdo baseado nas referências do livro Introdução à Linguagem SQL, do autor Thomas Nield:
![image](https://user-images.githubusercontent.com/25126687/168298868-2d862dc8-d21f-47b6-9a67-e964c4444c8d.png)

Abaixo informações importantes para prática dos exemplos deste repositório, separados nas seguintes sessões:

# Lista

1) Instalação da ferramenta SQLiteStudio, que possibilita a prática de consultas em um banco de dados que fica localmente em sua máquina, sem a necessidade de um servidor ou de internet
2) [Download do banco de dados de exemplo](#download-do-banco-de-dados-de-exemplo) que poderá ser importado no SQLiteStudio, com as tabelas prontas e disponíveis para a execução das consultas]
3) [Download dos scripts de exemplos de consultas](#download-dos-scripts-de-exemplos-de-consultas)
4) [Como executar as consultas](#como-executar-as-consultas)

## Instalação da ferramenta SQLiteStudio

1) Faça uma pesquina no Google mesmo pela palavra "SQLiteStudio" para encontrar o site ou visite diretamente o site da ferramenta no endereço https://sqlitestudio.pl/
2) Faça o download da ferramenta, geralmente o link para download já estará na primeira página do site, conforme exemplo abaixo:

![image](https://user-images.githubusercontent.com/25126687/168300823-35e2cb50-eb49-4627-885e-e66c0c0721d8.png)

3) O download feito é de um arquivo compactado, ou seja, dentro deste arquivos há pastas e outros arquivos. Utilize o seu programa preferido para extrair o conteúdo, conforme exemplo abaixo:

Antes de extrair:
![image](https://user-images.githubusercontent.com/25126687/168301450-cdc545b2-3774-4363-b3a8-be3229a73648.png)

Depois de extrair:
![image](https://user-images.githubusercontent.com/25126687/168301491-40c51130-b6a5-4868-ad83-5261b94befaa.png)

4) Note que eu extraí o conteúdo na minha própria pasta de Download (da figura de exemplo acima), mas você pode extrair o conteúdo para onde quiser
5) Entre na pasta que foi extraída (no meu caso é a pasta SQLiteStudio) e execute a aplicação SQLiteStudio.exe (se você for usuário de Windows, para outros sistemas operacionais deverá haver uma aplicação executável também chamado SQLiteStudio)

![image](https://user-images.githubusercontent.com/25126687/168304455-68fc04be-73c0-4afb-b0f9-719e5c8ff3d7.png)

6) Na primeira vez que você abrir o SQLiteStudio, ele vai pedir para você definir qual língua regional você deseja utilizar, eu mudei para o Português, após modificar (ou deixar em Inglês que é o padrão), clique no botão OK (sinceramente, fiz a mudança da língua mas continuou em inglês... Pode ser um bug da ferramenta):

![image](https://user-images.githubusercontent.com/25126687/168305147-3f261c2a-6c05-4760-a0c5-d96219194a22.png)

7) Pronto! Você já está na ferramenta!

![image](https://user-images.githubusercontent.com/25126687/168305270-532a60aa-e168-4ddc-9d3d-be37e71cdf77.png)

8) Você pode adicionar um banco de dados totalmente novo seu clicando (e sem nada) ou apontar para um banco de dados existente (é um arquivo) no menu Database e depois clicando no item Add a Database ou clicando no ícone para adicionar conforme imagem abaixo (no Windows dá para usar o atalho CTRL+O também):

Opção 1 pelo menu:
![image](https://user-images.githubusercontent.com/25126687/168305621-a6523d8d-58a3-4cc3-8a45-1cf23dfd1d64.png)

Opção 2 pelo ícone: 
![image](https://user-images.githubusercontent.com/25126687/168305675-44a19298-8000-4bab-a562-d82d1340f329.png)

9) Para criar um novo banco de dados (zerado), clique no botão que tem um símbolo de + (assim você indica como quer salvar o arquivo de banco de dados que conterá todas as suas coisas, escolhendo até um local para guardar esse arquivo) e "batize" seu banco de dados com um nome, conforme exemplo abaixo:

![image](https://user-images.githubusercontent.com/25126687/168308041-1261ccf3-457b-4d79-b22d-dc1ce87b288e.png)

Opção 1 (criar um novo arquivo de banco de dados): Ao clicar no "+" para criar um banco de dados novo, indique o nome do arquivo a ser salvo e onde (o diretório/pasta):

![image](https://user-images.githubusercontent.com/25126687/168308153-d4d6ea47-0af5-4ffd-999a-edb82034b538.png)

Opção 2 (selecionar um arquivo de banco de dados do SQLite que já exista): Ao clicar no ícone de pasta, você poderá selecionar o arquivo já existente para importar um banco de dados para a sua lista:

![image](https://user-images.githubusercontent.com/25126687/168308658-c706ad51-10ab-4923-a4fc-fdccb66662a0.png)

Indique o nome do banco de dados que aparecerá na lista à esquerda do SQLiteStudio e clique em OK:

![image](https://user-images.githubusercontent.com/25126687/168308247-f0a8e87c-16c7-4028-8467-0f8e09fdb88d.png)

10) Pronto! Seu banco de dados estará na lista e pronto para uso:

![image](https://user-images.githubusercontent.com/25126687/168308848-8d25a7ea-fc37-4696-aafe-d5766ac26ca9.png)

11) Para conectar no banco de dados (isso é necessário para utilizá-lo), você tem 4 maneiras de fazer:

a) Clicar 2x em cima do nome do banco de dados desejado

b) Clicar 1x em cima do nome do banco de dados desejado e depois clicando no ícone de tomada (conforme exempo abaixo):

![image](https://user-images.githubusercontent.com/25126687/168309198-89fbc03d-ee2a-49a0-b8e4-ccc58bc59374.png)

c) Clicar 1x em cima do nome do banco de dados desejado e depois clicando no menu "Database" e em seguida clicando no sub menu "Connect to the database" (conforme exempo abaixo):

![image](https://user-images.githubusercontent.com/25126687/168309639-61f1e43b-8ef1-427e-9d87-3b6070a99e37.png)

d) Clicar 1x em cima do nome do banco de dados desejado e depois clicar com o botão direito do mouse em cima dele e por último no item de menu suspenso "Connect to the database" (conforme exempo abaixo):

![image](https://user-images.githubusercontent.com/25126687/168309960-9d5eb2e4-7259-44bc-9a3f-1a902c0c4955.png)

12) Agora sim você está pronto para usar o banco de dados! Tem que aparecer as Tables e Views quando você está conectado, conforme exemplo abaixo:

![image](https://user-images.githubusercontent.com/25126687/168310111-fefedeeb-7afc-4019-9e61-fe1db027d139.png)

[Ir para a lista de sessões (voltar pra cima)](#lista)

# Download do banco de dados de exemplo

No próprio livro de referência aqui citado é indicado um repositório do Github com o banco de dados de exemplo.

Em uma nova aba em seu browser, abra o seguinte link que aponta para o repositório do Github do autor do livro: https://github.com/thomasnield/oreilly_getting_started_with_sql

![image](https://user-images.githubusercontent.com/25126687/168332968-dafd5329-eede-4f70-9720-89d0de47ec7f.png)

Se você não está habituado com o uso do Git, recomendo que você clique no botão "Code" e depois no item "Download ZIP", caso contrário faça o "clone" do resositório para baixar o banco de dados de exemplo. Abaixo um exemplo de como fazer o Download sem precisar clonar o repositório:

![image](https://user-images.githubusercontent.com/25126687/168333108-29f3540b-02c6-4648-afda-92d3333ec108.png)

Após efetuar o download ou clone do repositório, você terá na sua máquina um conjunto de arquivos.

Faça os procedimentos para abrir um banco de dados existente e inclua na lista do SQLiteStudio todos os databases (os arquivos .db):

![image](https://user-images.githubusercontent.com/25126687/168333552-1999468c-4ad4-4409-9f1c-4fcb730975af.png)

Sua lista deverá ter a seguinte composição de bancos de dados (se você seguiu fielmente todos os passos até aqui):

![image](https://user-images.githubusercontent.com/25126687/168333706-81aec4da-0e8a-4b13-9db7-3a8228531df8.png)

Pronto! Os bancos de dados com os exemplos já prontos estão disponíveis para você explorar!

[Ir para a lista de sessões (voltar pra cima)](#lista)

# Download dos scripts de exemplos de consultas

Neste repositório você encontra alguns scripts com exemplos de consultas divididos em 4 temas (aqui em 4 pastas): SELECT, WHERE, GROUP (BY e HAVING) e JOIN. Cada uma das pastas possui um script com exemplos (ao total 4 arquivos de scripts, cada um com seu tema).

É necessário que você faça do download dos bancos de dados de exemplo (visto na sessão anterior) para que você consiga executar os scripts de exemplo.

As queries foram todas retiradas do livro de referência, a intenção aqui é disponibilizar de forma mais prática para que você já tenha o script em mãos ao consumir o conteúdo do livro.

Se você não está habituado com o uso do Git, recomendo que você clique no botão "Code" e depois no item "Download ZIP", caso contrário faça o "clone" do resositório para baixar este repositório com os scripts de exemplos de consultas. Abaixo um exemplo de como fazer o Download sem precisar clonar o repositório:

![image](https://user-images.githubusercontent.com/25126687/168336467-4c29b04f-f20a-4fd1-94a1-97abb1d945ee.png)

Após efetuar o download ou clone do repositório, você terá na sua máquina um conjunto de pastas, dentro de cada pasta estarão os arquivos com os scripts:

![image](https://user-images.githubusercontent.com/25126687/168336895-66c3a8b5-c8f0-4559-b9d0-dfc2b2935dce.png)

[Ir para a lista de sessões (voltar pra cima)](#lista)

# Como executar as consultas

[Ir para a lista de sessões (voltar pra cima)](#lista)

## ProjetoModeloWatir
Modelo de uso do Page Object com o Framework Watir, usando o tapestry framework para gerenciar os elementos em cada page, como é feito no SitePrism, usando o conceito de Pages Object. Não temos nenhum Sleep fixo no projeto, tudo é feito de forma dinâmica. Não utilizamos xpath nesse projeto somente ID e CSS Selector, como boa prática procurei deixar o projeto relativamente simples. 

<br>O único paramêtro que é passado via cucumber é o browser.
<br>Em pages temos duas páginas uma somente com funções e outra somente com os elementos, para ficar bem organizado.

### Instalação das Gems é necessário instalar primeiro o bundler ###
To install bundler type:
```shell
gem install bundler
```

##### Gems que vão ser instaladas #####

Gems necessário para rodar os testes, elas estão referenciadas dentro do arquivo de "Gemfile", esse arquivo não tem extensão, automaticamente que você dar o comando "bundle install" via console ele vai tentar instalar todos as Gems e as dependências dela:

```ruby
source 'https://rubygems.org'
gem 'watir'
gem 'cucumber', -v 2.4.0 
gem 'rspec'
gem 'rspec-expectations'
gem "tapestry"
```

### Installing gems ###
Primeiro Passo entrar na pasta do projeto via cmd ou shell e instalar as gems com o comando abaixo, mas para isso você primeiro precisa instalar a "gem bundle" antes:
```shell
bundle install
```

### Drivers: ###
Devemos baixar os drivers dos sites abaixo e copiar para a pasta do Ruby, dentro do /bin, exemplo: "C:\Ruby23\bin".


### Automação de testes funcionais do site watir-webdriver-demo: ###

```cucumber
#language: pt
#encoding: utf-8

@Formulario
Funcionalidade: Formulario

  @CT001-form_fill-ruby
  Cenario: Preenchendo dados do formulario.
    Dado que acesse a tela de formulario
    E preencher os campos do formulario.
      | texto    | 'ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%¨&*()+^",.;/' |
      | language | Ruby                                          |
      | question | A programming language                        |
      | versions | 1.8.6                                         |
    E Selecionar a opcao "Enviar"
    Então Deve informar uma mensagem de sucesso "Thank you for playing with Watir-WebDriver".

  @CT002-form_fill-version
  Cenario: Preenchendo dados do formulario.
    Dado que acesse a tela de formulario
    E preencher os campos do formulario.
      | texto    | 1234567890 |
      | language | Python     |
      | question | A gem      |
      | versions | 1.9.2      |
    E Selecionar a opcao "Enviar"
    Então Deve informar uma mensagem de sucesso "Thank you for playing with Watir-WebDriver".
```

No nosso projeto temos somente um arquivo ".feature", o cucumber vai somente ler esses arquivos *.feature para executar os testes, para enviar o comando do cucumber você de está no diretório acima da /feature, somente dando o comando "cucumber" vai executar todas as features criadas. No entando como boa prática executar por tags, uma tag nada menos que uma referência a feature ou ao cenário realizado, para criarmos uma tag utilizamos o @NOME_DA_TAG_SEM_ESPACOS_E_CARACTERES_ESPECIAIS , antes da palavra "Funcionalidade" e "Cenario". 


### Usando as tags no cucumber: ###
@CT001-form_fill-ruby -> Executa o primeiro teste da feature formulario, que contém a linguagem ruby.<br>
@CT002-form_fill-version -> Executa o segundo teste da feature formulario, que contém a linguagem python.<br>

EXEMPLO DE COMANDO LOGIN:
```shell
cucumber -t @CT001-form_fill-ruby BROWSER=ff
```
EXEMPLO DE COMANDO CADASTRO:
```shell
cucumber -t @CT002-form_fill-version BROWSER=chrome
```

### HTML Report###
Para adicionar o report adicione o comando abaixo no cucumber:
```shell
cucumber --format html --out="features/reports/CT001-form_fill-ruby.html" --tag @CT001-form_fill-ruby BROWSER=chrome
```
Para gerar o relatório devemos usar o comando "--format html" e devemos informar a localização ou seja a saída, aonde irá ficar o nosso relatório, fazemos através do comando '--out="CAMINHO/NOME_DO_ARQUIVO.html"', sem as aspas simples.

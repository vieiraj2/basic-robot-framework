*** Settings ***
Library           Selenium
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

### SETUP: roda keyword antes da suite ou antes de um teste
### TEARDOWN: roda keyword depois de uma suite ou depois de um teste

*** Variables ***
${URL}          http://automationpractice.com/index.php
${BROWSER}      chrome

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
  Acessar a página home do site
  Conferir se a página home foi exibida
  Digitar o nome do produto "Blouse" no campo de pesquisa
  Clicar no botão pesquisar
  Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisar produto não existente
  Acessar a página home do site
  Conferir se a página home foi exibida
  Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
  Clicar no botão pesquisar
  Conferir mensagem de erro "No results were found for your search "itemNãoExistente""

*** Keywords ***

*** Settings ***
Library   Selenium

*** Variables ***
${URL}          http://automationpractice.com/index.php
${BROWSER}      chrome

*** Test Case ***
Cenário 01: Pesquisar produto existente
  Dado que eu estou na página home do site
  Quando eu pesquisar pelo produto "Blouse"
  Então o produto "Blouse" deve ser listado na página de resultado da busca

Cenário 02: Pesquisar produto não existente
  Dado que eu estou na página home do site
  Quando eu pesquisar pelo produto "itemNãoExistente"
  Então a página deve exibir a mensagem "No results were found for your search "itemNãoExistente""


*** Keywords ***

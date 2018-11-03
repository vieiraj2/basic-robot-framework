*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}          http://automationpractice.com/index.php
${BROWSER}      chrome

*** Keywords ***
# Setup e Teardown
Abrir navegador     
    Open Browser    ${URL}      ${BROWSER}

Fechar navegador
    Close Browser

# Passo-a-passo
Acessar a página home do site
    Title Should Be     My Store


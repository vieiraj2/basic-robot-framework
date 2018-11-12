*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}          http://automationpractice.com
${BROWSER}      chrome
${PRODUTO}      Blouse

*** Keywords ***
# Setup e Teardown
Abrir navegador     
    Open Browser    about:blank      ${BROWSER}

Fechar navegador
    Close Browser

# Passo-a-passo
Acessar a página home do site
    Go To               ${URL}
    Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text          id=search_query_top     ${PRODUTO}

Clicar no botão pesquisar
    Click Element       name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible       css=#center_column > h1
    Title Should Be                     Search - My Store
    Page Should Contain Image           xpath=//*[@id="center_column"]//*[@src="${URL}/img/p/7/7-home_default.jpg"]
    Page Should Contain Link            xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]

Conferir mensagem de erro "${MENSAGEM_ALERTA}"
    Wait Until Element Is Visible       //*[@id="center_column"]/p[@class="alert alert-warning"]
    Element Text Should Be              //*[@id="center_column"]/p[@class="alert alert-warning"]    ${MENSAGEM_ALERTA}
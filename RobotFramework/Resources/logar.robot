*** Settings ***
Documentation     Example de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary
Resource      ../Resources/elementosnatela.robot


*** Variables ***


*** Keywords ***
  
Informar Usuario
    [Arguments]    ${username}
    click element  ${field_usuario}
    Input Text     ${field_usuario}  ${username}
    
Informar Senha
    [Arguments]    ${password}
    click element  ${field_senha}
    Input Text     ${field_senha}  ${password}

Clicar Botao
    Click Button   ${botao_click}


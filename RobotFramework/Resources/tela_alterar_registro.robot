*** Settings ***
Documentation     Example de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary
Resource      ../Resources/elementosnatela.robot


*** Variables ***


*** Keywords ***
Clicar em Alterar
    Click Element       ${botao_alterar} 
    Wait Until Element Is Visible              ${field_name}
    Wait Until Element Is Enabled              ${field_name}
    Wait Until Page Contains Element           ${field_name}
    Clear Element Text                         ${field_name}
    Input Text                                 ${field_name}         ${usernamenew}
    Click Button                               ${botao_salvar}
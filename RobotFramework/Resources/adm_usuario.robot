*** Settings ***
Documentation     Example de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary
Resource      ../Resources/elementos.robot


*** Variables ***


*** Keywords ***
Clicar no Menu Admin
    Click Element       ${menu_admin}    

Acessar FiltroPesquisa
    click Element       ${field_pesquisa}
    input Text          ${field_pesquisa}   ${username}        
    
Clicar no botao Pesquisar    
    Click Button       ${btn_filtrar}    

Clicar em Alterar Usuario
    Click Element                              ${btn_alterar} 
    Wait Until Element Is Visible              ${field_adm_name_user}
    Wait Until Element Is Enabled              ${field_adm_name_user}
    Wait Until Page Contains Element           ${field_adm_name_user}
    Clear Element Text                         ${field_adm_name_user}
    Input Text                                 ${field_adm_name_user}    ${usernamenew}
    Click Button                               ${btn_salvar}
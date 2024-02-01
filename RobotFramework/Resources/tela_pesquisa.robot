*** Settings ***
Documentation     Example de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary
Resource      ../Resources/elementosnatela.robot


*** Variables ***


*** Keywords ***
Clicar no Menu Admin
    Click Element       ${menu_admin}    

Acessar FiltroPesquisa
    click Element       ${field_pesquisa}
    input Text          ${field_pesquisa}   ${username}        
    
Clicar no botao Pesquisar    
    Click Button       ${botao_filtrar}    

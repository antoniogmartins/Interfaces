*** Settings ***
Documentation     Example de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary
Resource      ../Resources/elementos.robot


*** Variables ***


*** Keywords ***
Clicar no Menu
    Click Element       ${field_menu}    

Acessar FiltroPesquisadoMenu
    input Text          ${field_menu}      Maintenance        

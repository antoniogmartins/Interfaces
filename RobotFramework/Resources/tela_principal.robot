*** Settings ***
Documentation     Example de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary
Resource      ../Resources/elementosnatela.robot


*** Variables ***


*** Keywords ***
Carregar Elementos na Tela Principal
    Wait Until Element Is Visible      ${menu_admin}  


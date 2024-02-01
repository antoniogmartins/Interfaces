*** Settings ***
Resource      ../Resources/elementosnatela.robot
Documentation     Example de como se navegar utilizando o Google Chrome.

*** Variables ***


*** Keywords ***
    
Open Browser To Login Page
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window

Carregar Elementos na Tela Inicial
	Wait Until Page Contains Element   ${field_usuario}

Fechar navegador
   Close Browser    

*** Settings ***
Documentation     Examplo de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${navegador}             Chrome
${titulo_pagina}         OrangeHRM
${username}              Admin
${password}              admin123
${field_usuario}         xpath://input[@placeholder='Username']
${field_senha}           xpath://input[@placeholder='Password']


*** Keywords ***

Open Browser To Login Page
    Open Browser    ${url}    ${navegador}

Verificar Titulo
    Title Should Be    ${titulo_pagina}

Carregar Elementos na Tela
    Wait Until Element Is Visible  xpath://input[@placeholder='Username'] 

Fechar navegador
   Close Browser    

Informar Usuario
    [Arguments]    ${username}
    click element  ${field_usuario}
    Input Text     ${field_usuario}  ${username}
    
Informar Senha
    [Arguments]    ${password}
    click element  ${field_senha}
    Input Text     ${field_senha}  ${password}

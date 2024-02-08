*** Settings ***
Documentation     Example de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary
Resource      ../Resources/elementos.robot


*** Variables ***


*** Keywords ***
  
Informar Usuario/Senha Válidos
    click element  ${field_usuario}
    Input Text     ${field_usuario}  ${username}
    
Informar Usuario/Senha Inválidos
    click element  ${field_usuario}
    Input Text     ${field_usuario}  ${usernamenew}

Validar mensagem Usuario/Senhas invalidos
    Wait Until Element Is Visible  ${msg_user_invalido}
    ${msg_user}     Get Text       ${msg_user_invalido}
    Should Be Equal As Strings     ${msg_user}           Invalid credentials  

Limpar Campo de Usuario/Senha
    Click Element                  ${field_usuario}
    Clear Element Text             ${field_usuario}
    Click Element                  ${field_senha}
    Clear Element Text             ${field_senha}

Validar mensagem sem Usuario/Senhas
    ${msg_user}     Get Text       ${msg_user_embranco}
    Should Be Equal As Strings     ${msg_user}            Required  
    ${msg_senha}     Get Text      ${msg_senha_embranco}
    Should Be Equal As Strings     ${msg_senha}           Required 

Informar Senha
    click element  ${field_senha}
    Input Text     ${field_senha}  ${password}

Clicar Botao
    Click Button   ${botao_click}


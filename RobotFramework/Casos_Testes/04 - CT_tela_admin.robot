*** Settings ***
Resource    ../Resources/navegar.robot
Resource    ../Resources/logar.robot
Resource    ../Resources/titulo_principal.robot
Resource    ../Resources/principal.robot
Resource    ../Resources/adm_usuario.robot
Resource    ../Resources/filtrar_menu.robot
Documentation  Tags in Robot Framework

*** Test Cases ***

CT 007 - Tela ADMIN - User - Realizar Pesquisa por um Usuario
    [tags]   Localizar Usuario(s)
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos      
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    adm_usuario.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}
    adm_usuario.Acessar FiltroPesquisa
    Capture Page Screenshot
    adm_usuario.Clicar no botao Pesquisar
    navegar.Fechar navegador

CT 008 - Tela ADMIN - User - Resetar Pesquisa do Usuario
    [tags]   Resetar a Pesquisa do Usuairo
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos  
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    adm_usuario.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}
    adm_usuario.Acessar FiltroPesquisa
    adm_usuario.Clicar no botao Pesquisar
    Capture Page Screenshot
    Click Button  ${btn_resetar}
    navegar.Fechar navegador

#CT 009 - Tela ADMIN - User - Adicionar Usuario
#    [tags]   Adicionar Usuario
#   navegar.Open Browser To Login Page
#    navegar.Carregar Elementos na Tela Inicial
#    logar.Informar Usuario/Senha Válidos    
#    logar.Clicar Botao
#    Wait Until Element Is Visible  ${banner_titulo}
#    principal.Carregar Elementos na Tela Principal
#    adm_usuario.Clicar no Menu Admin
#    Wait Until Element Is Visible  ${field_pesquisa}
#    Click Button  ${btn_adicionar}
#    Wait Until Element Is Visible  ${field_adm_name_user}
#    Wait Until Element Is Visible  ${field_adm_user_role}
#    Mouse Over     ${field_adm_user_role}
#    Click Element  ${field_adm_user_role}
#    Mouse Down     ${field_adm_user_role2}
#    Click Element  ${field_adm_user_role2}

CT 010 - Tela ADMIN - User - Alterar Usuario
    [tags]   Alterar Usuario
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos    
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    adm_usuario.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}
    adm_usuario.Acessar FiltroPesquisa
    adm_usuario.Clicar no botao Pesquisar
    Wait Until Element Is Visible  ${btn_alterar}
    Capture Page Screenshot
    adm_usuario.Clicar em Alterar Usuario
    navegar.Fechar navegador


CT 011 - Tela ADMIN - User - Excluir Usuario
    [tags]   Deletar Usuário
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos   
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    adm_usuario.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}

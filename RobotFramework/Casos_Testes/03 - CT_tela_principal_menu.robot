*** Settings ***
Resource    ../Resources/navegar.robot
Resource    ../Resources/logar.robot
Resource    ../Resources/titulo_principal.robot
Resource    ../Resources/principal.robot
Resource    ../Resources/pesquisar_user.robot
Resource    ../Resources/alterar_user.robot
Resource    ../Resources/filtrar_menu.robot
Documentation  Tags in Robot Framework

*** Test Cases ***
CT 006 - Filtrar Menu
    [tags]   Localizar Registro
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos  
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    Wait Until Element Is Visible  ${field_menu}
    filtrar_menu.Acessar FiltroPesquisadoMenu
    Capture Page Screenshot
    navegar.Fechar navegador

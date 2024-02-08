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
CT 001 - Acessar Página Inicial
    [tags]   Abrir Navegador
    Capture Page Screenshot
    navegar.Open Browser To Login Page
    navegar.Fechar navegador

CT 002 - Validar Titulo
    [tags]   Validar titulo
    navegar.Open Browser To Login Page
    Capture Page Screenshot
    Verificar Titulo
    navegar.Fechar navegador

CT 003 - EFetuar Login
    [tags]   Logar
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario    ${username}
    logar.Informar Senha      ${password}
    Capture Page Screenshot
    logar.Clicar Botao
    navegar.Fechar navegador

CT 004 - Filtrar Menu
    [tags]   Localizar Registro
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario    ${username}
    logar.Informar Senha      ${password}
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    Wait Until Element Is Visible  ${field_menu}
    filtrar_menu.Acessar FiltroPesquisadoMenu
    Capture Page Screenshot
    navegar.Fechar navegador

CT 005 - Tela ADMIN - Realizar Pesquisa
    [tags]   Localizar Registro
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario    ${username}
    logar.Informar Senha      ${password}
     logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    pesquisar_user.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}
    pesquisar_user.Acessar FiltroPesquisa
    Capture Page Screenshot
    pesquisar_user.Clicar no botao Pesquisar
    navegar.Fechar navegador

CT 006 - Tela ADMIN - Alterar Registro
    [tags]   Alterar Registro
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario    ${username}
    logar.Informar Senha      ${password}
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    pesquisar_user.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}
    pesquisar_user.Acessar FiltroPesquisa
    pesquisar_user.Clicar no botao Pesquisar
    Wait Until Element Is Visible  ${botao_alterar}
    Capture Page Screenshot
    alterar_user.Clicar em Alterar
    navegar.Fechar navegador
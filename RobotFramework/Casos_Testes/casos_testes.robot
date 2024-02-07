*** Settings ***
Resource    ../Resources/abrir_navegador.robot
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
    abrir_navegador.Open Browser To Login Page
    abrir_navegador.Fechar navegador

CT 002 - Validar Titulo
    [tags]   Validar titulo
    abrir_navegador.Open Browser To Login Page
    Capture Page Screenshot
    Verificar Titulo
    abrir_navegador.Fechar navegador

CT 003 - EFetuar Login
    [tags]   Logar
    abrir_navegador.Open Browser To Login Page
    abrir_navegador.Carregar Elementos na Tela Inicial
    logar.Informar Usuario    ${username}
    logar.Informar Senha      ${password}
    Capture Page Screenshot
    logar.Clicar Botao
    abrir_navegador.Fechar navegador

CT 004 - Filtrar Menu
    [tags]   Localizar Registro
    abrir_navegador.Open Browser To Login Page
    abrir_navegador.Carregar Elementos na Tela Inicial
    logar.Informar Usuario    ${username}
    logar.Informar Senha      ${password}
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    Wait Until Element Is Visible  ${field_menu}
    filtrar_menu.Acessar FiltroPesquisadoMenu
    Capture Page Screenshot
    abrir_navegador.Fechar navegador

CT 005 - Realizar Pesquisa
    [tags]   Localizar Registro
    abrir_navegador.Open Browser To Login Page
    abrir_navegador.Carregar Elementos na Tela Inicial
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
    abrir_navegador.Fechar navegador

CT 006 - Alterar Registro
    [tags]   Alterar Registro
    abrir_navegador.Open Browser To Login Page
    abrir_navegador.Carregar Elementos na Tela Inicial
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
    abrir_navegador.Fechar navegador
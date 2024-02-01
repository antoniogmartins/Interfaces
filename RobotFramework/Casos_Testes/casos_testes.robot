*** Settings ***
Resource    ../Resources/abrir_navegador.robot
Resource    ../Resources/logar.robot
Resource    ../Resources/verificar_titulo.robot
Resource    ../Resources/tela_principal.robot
Resource    ../Resources/tela_pesquisa.robot
Resource    ../Resources/tela_alterar_registro.robot
Documentation  Tags in Robot Framework

*** Test Cases ***
CT 001 - Validar Login
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

CT 004 - Realizar Pesquisa
    [tags]   Localizar Registro
    abrir_navegador.Open Browser To Login Page
    abrir_navegador.Carregar Elementos na Tela Inicial
    logar.Informar Usuario    ${username}
    logar.Informar Senha      ${password}
     logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    tela_principal.Carregar Elementos na Tela Principal
    tela_pesquisa.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}
    tela_pesquisa.Acessar FiltroPesquisa
    Capture Page Screenshot
    tela_pesquisa.Clicar no botao Pesquisar

CT 5 - Alterar Registro
    [tags]   Alterar Registro
    abrir_navegador.Open Browser To Login Page
    abrir_navegador.Carregar Elementos na Tela Inicial
    logar.Informar Usuario    ${username}
    logar.Informar Senha      ${password}
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    tela_principal.Carregar Elementos na Tela Principal
    tela_pesquisa.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}
    tela_pesquisa.Acessar FiltroPesquisa
    tela_pesquisa.Clicar no botao Pesquisar
    Wait Until Element Is Visible  ${botao_alterar}
    Capture Page Screenshot
    tela_alterar_registro.Clicar em Alterar
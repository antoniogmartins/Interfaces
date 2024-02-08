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

CT 002 - Validar Titulo Pagina Inicial
    [tags]   Validar titulo
    navegar.Open Browser To Login Page
    Capture Page Screenshot
    titulo_principal.Verificar Titulo
    navegar.Fechar navegador

CT 003 - Efetuar Login com Usuario/Senha Válidos
    [tags]   Logar
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos
    Capture Page Screenshot
    logar.Clicar Botao
    navegar.Fechar navegador

CT 004 - Efetuar Login com Usuário/Senha Inválidos
    [tags]   Logar
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Inválidos
    logar.Clicar Botao
    logar.Validar mensagem Usuario/Senhas invalidos
    Capture Page Screenshot
    navegar.Fechar navegador

CT 005 - Efetuar Login sem Usuario/Senha 
    [tags]   Logar
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Limpar Campo de Usuario/Senha
    logar.Clicar Botao
    logar.Validar mensagem sem Usuario/Senhas
    Capture Page Screenshot
    navegar.Fechar navegador

CT 006 - Filtrar Menu
    [tags]   Localizar Registro
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos
    logar.Informar Senha      
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    Wait Until Element Is Visible  ${field_menu}
    filtrar_menu.Acessar FiltroPesquisadoMenu
    Capture Page Screenshot
    navegar.Fechar navegador

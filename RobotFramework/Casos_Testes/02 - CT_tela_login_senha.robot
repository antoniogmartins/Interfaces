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

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

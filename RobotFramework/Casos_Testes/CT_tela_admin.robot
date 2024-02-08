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

CT 007 - Tela ADMIN - Realizar Pesquisa
    [tags]   Localizar Registro
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos
    logar.Informar Senha      
     logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    pesquisar_user.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}
    pesquisar_user.Acessar FiltroPesquisa
    Capture Page Screenshot
    pesquisar_user.Clicar no botao Pesquisar
    navegar.Fechar navegador

CT 008 - Tela ADMIN - Resetar Pesquisa
    [tags]   Resetar a Pesquisa
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos
    logar.Informar Senha      
     logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    pesquisar_user.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}

CT 009 - Tela ADMIN - Adicionar Registro
    [tags]   Adicionar Registro
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos
    logar.Informar Senha      
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    pesquisar_user.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}

CT 010 - Tela ADMIN - Alterar Registro
    [tags]   Alterar Registro
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos
    logar.Informar Senha      
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

CT 011 - Tela ADMIN - Excluir Registro
    [tags]   Deletar Registro
    navegar.Open Browser To Login Page
    navegar.Carregar Elementos na Tela Inicial
    logar.Informar Usuario/Senha Válidos
    logar.Informar Senha      
    logar.Clicar Botao
    Wait Until Element Is Visible  ${banner_titulo}
    principal.Carregar Elementos na Tela Principal
    pesquisar_user.Clicar no Menu Admin
    Wait Until Element Is Visible  ${field_pesquisa}

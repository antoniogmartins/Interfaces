*** Settings ***
Documentation     Example de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary
Resource      ../Resources/elementosnatela.robot

*** Variables ***

*** Keywords ***

Verificar Titulo
    Title Should Be    ${titulo_pagina}

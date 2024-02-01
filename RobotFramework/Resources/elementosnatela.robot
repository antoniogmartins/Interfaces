*** Settings ***
Documentation     Example de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${navegador}             Chrome
${titulo_pagina}         OrangeHRM
${username}              Admin
${usernamenew}           Geraldo
${password}              admin123
${field_usuario}         xpath://input[@placeholder='Username']
${field_senha}           xpath://input[@placeholder='Password']
${botao_click}           xpath: //button[normalize-space()='Login']
${banner_titulo}         xpath: //*[@id="app"]/div[1]/div[1]/aside/nav/div[1]/a/div[2]/img
${implicit_wait}         10seconds
${menu_admin}            xpath: //span[normalize-space()='Admin']
${field_pesquisa}        xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input
${botao_filtrar}         xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
${botao_alterar}         xpath: //div[@role='table']//div[1]//div[1]//div[6]//div[1]//button[2]
${field_name}            xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input
${botao_salvar}          xpath: //button[@type='submit']

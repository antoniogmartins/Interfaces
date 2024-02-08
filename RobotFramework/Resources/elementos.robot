*** Settings ***
Documentation     Example de como se navegar utilizando o Google Chrome.
Library           SeleniumLibrary

*** Variables ***
${url}                            https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${navegador}                      Chrome
${titulo_pagina}                  OrangeHRM
${username}                       Admin
${usernamenew}                    Geraldo
${password}                       admin123
${msg_user_invalido}              xpath: //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/div/div[1]/div[1]/p
${msg_user_embranco}              xpath: //div[@class='orangehrm-login-slot-wrapper']//div[1]//div[1]//span[1]
${msg_senha_embranco}             xpath: //div[@class='orangehrm-login-form']//div[2]//div[1]//span[1]
${field_usuario}                  xpath: //input[@placeholder='Username']
${field_senha}                    xpath: //input[@placeholder='Password']
${botao_click}                    xpath: //button[normalize-space()='Login']
${banner_titulo}                  xpath: //*[@id="app"]/div[1]/div[1]/aside/nav/div[1]/a/div[2]/img
${banner_titulo1}                 xpath: //img[@alt='company-branding']
${implicit_wait}                  10seconds
${menu_admin}                     xpath: //span[normalize-space()='Admin']
${field_menu}                     xpath: //input[@placeholder='Search']
${field_pesquisa}                 xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input
${btn_filtrar}                    xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
${btn_alterar}                    xpath: //div[@role='table']//div[1]//div[1]//div[6]//div[1]//button[2]
${btn_salvar}                     xpath: //button[@type='submit']
${btn_resetar}                    xpath: //button[normalize-space()='Reset']
${btn_adicionar}                  xpath: //button[normalize-space()='Add']
${field_adm_name_user}            xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input
${field_adm_user_role}            xpath: //div[@class='oxd-select-text-input'][normalize-space()='-- Select --']

#//div[@class='oxd-select-text oxd-select-text--focus']

${field_adm_user_role1}           xpath: //div[contains(text(),'Admin')]
${field_adm_user_role2}           xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[1]
${field_adm_status}               xpath: //div[contains(text(),'Enabled')]
${field_adm_employeed_name}       xpath: //input[@placeholder='Type for hints...']
${field_adm_password}             xpath: //input[@class='oxd-input oxd-input--focus']

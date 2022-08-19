*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                 https://www.amazon.com.br/
${main_link}           //a[@aria-label='Amazon.com.br'] 
${menu_eletronicos}    //a[contains(@href,'electronics')]

*** Keywords ***

Nova sessão
    Open Browser    ${url}    chrome      options=add_experimental_option('excludeSwitches', ['enable-logging'] )
    Maximize Browser Window

Encerrar sessão
    Close Browser

Acessar menu eletronicos
    
    Click Element    ${menu_eletronicos}
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}            https://www.amazon.com.br/
${main_link}      //a[@id='skiplink']

*** Keywords ***

Nova sessão
    Open Browser    ${url}    chrome    options=add_experimental_option('excludeSwitches', ['enable-logging'] )
    Maximize Browser Window

Encerrar sessão
    Close Browser
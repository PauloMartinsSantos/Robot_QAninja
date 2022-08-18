*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}               https://training-wheels-protocol.herokuapp.com/

*** Keywords ***
Nova sessão
    Open Browser                   ${url}     chrome    options=add_experimental_option('excludeSwitches', ['enable-logging'] )
Encerra sessão
    Capture Page Screenshot
    Close Browser    
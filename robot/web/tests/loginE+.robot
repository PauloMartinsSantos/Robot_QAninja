*** Settings ***
Library     SeleniumLibrary

Test Setup       Nova sessão
Test Teardown    Encerra sessão

*** Variables ***
${url_via}        https://hlg-entregamais.viavarejo.com.br/login
${empresa}        xpath: //input[@name='employeeCompany']
${filial}         xpath: //input[@name='employeeBranch'] 
${matricula}      xpath: //input[@name='username'] 
${senha}          xpath: //input[@name='password'] 


*** Keywords ***
Nova sessão
    Open Browser    ${url_via}    chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser

Login
    Input Text        ${empresa}      21
    Input Text        ${filial}       1244  
    Input Text        ${matricula}    706906
    Input Password    ${senha}        homolog01
    Click Element    xpath: //button[@type='submit']


*** Test Cases ***

Validar login no E+ com sucesso
    Login
    Page Should Contain    text=Separação por 
    
    Sleep    5            
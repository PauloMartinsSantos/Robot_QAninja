*** Settings ***
Library   SeleniumLibrary

Test Setup     Nova sessão
Test Teardown  Encerra sessão

*** Keywords ***
Nova sessão
    Open Browser                   ${url}     chrome
Encerra sessão
    Close Browser    


*** Variables ***
${url}               https://training-wheels-protocol.herokuapp.com/
${check_thor}        id:thor
${check_iron}        css:input[value='iron-man']
${check_panther}     xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Validar seleção de checkbox contendo Id com sucesso
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_thor}
    Checkbox Should Be Selected    ${check_thor}

Validar seleção de checkbox com CSS selector
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_iron}
    Checkbox Should Be Selected    ${check_iron}

Validar seleção de checkbox com Xpath
    [Tags]   blackpanther 
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_panther}
    Checkbox Should Be Selected    ${check_panther}

   


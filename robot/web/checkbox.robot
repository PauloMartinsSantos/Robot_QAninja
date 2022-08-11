*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}               https://training-wheels-protocol.herokuapp.com/
${check_thor}        id:thor
${check_iron}        css:input[value='iron-man']
${check_panther}     xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Validar seleção de checkbox contendo Id com sucesso
    Open Browser                   ${url}     chrome
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_thor}
    Checkbox Should Be Selected    ${check_thor}
    Close Browser

Validar seleção de checkbox com CSS selector
    Open Browser                   ${url}     chrome
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_iron}
    Checkbox Should Be Selected    ${check_iron}
    Close Browser

Validar seleção de checkbox com Xpath
    [Tags]   blackpanther 
    Open Browser                   ${url}     chrome
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_panther}
    Checkbox Should Be Selected    ${check_panther}
    Close Browser
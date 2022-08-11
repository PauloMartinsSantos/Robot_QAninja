*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}       https://training-wheels-protocol.herokuapp.com/   

*** Test Cases ***
Validar seleção de checkbox contendo Id com sucesso
    Open Browser                   ${url}     chrome
    Go To                          ${url}/checkboxes
    Select Checkbox                id:thor
    Checkbox Should Be Selected    id:thor
    Close Browser

Validar seleção de checkbox com CSS selector
    Open Browser                   ${url}     chrome
    Go To                          ${url}/checkboxes
    Select Checkbox                css:input[value='iron-man']
    Checkbox Should Be Selected    css:input[value='iron-man']
    Close Browser

Validar seleção de checkbox com Xpath
    [Tags]   blackpanther 
    Open Browser                   ${url}     chrome
    Go To                          ${url}/checkboxes
    Select Checkbox                xpath://*[@id='checkboxes']/input[7]
    Checkbox Should Be Selected    xpath://*[@id='checkboxes']/input[7]
    Close Browser
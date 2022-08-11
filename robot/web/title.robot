*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Validar titulo da página
    Open Browser         https://training-wheels-protocol.herokuapp.com/        chrome
    Title Should Be      Training Wheels Protocol 
    Close Browser

    ## Mesma solução implementada com RobotFramework


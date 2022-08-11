*** Settings ***
Resource        base.robot

Test Setup     Nova sessão
Test Teardown  Encerra sessão
*** Test Cases ***
Validar titulo da página
    Title Should Be      Training Wheels Protocol 

    ## Mesma solução implementada com RobotFramework


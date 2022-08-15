*** Settings ***
Resource       base.robot

Test Setup     Nova sessão
Test Teardown  Encerra sessão

*** Test Cases ***

Validar acesso a pagina de Dropdown list
    Go To    ${url}/dropdown
    Page Should Contain    text=Dropdown List
    Sleep    5

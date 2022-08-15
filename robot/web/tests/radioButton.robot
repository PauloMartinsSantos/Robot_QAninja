*** Settings ***
Resource       base.robot

Test Setup     Nova sessão
Test Teardown  Encerra sessão

*** Test Cases ***

Validar seleção de radio button via id
    Go To   ${url}/radios
    Select Radio Button              movies    cap
    Radio Button Should Be Set To    movies    cap

Validar seleção de radio button por Value
    Go To   ${url}/radios
    Select Radio Button              movies    guardians 
    Radio Button Should Be Set To    movies    guardians




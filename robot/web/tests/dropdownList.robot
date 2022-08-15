*** Settings ***
Resource       base.robot

Test Setup     Nova sessão
Test Teardown  Encerra sessão

*** Test Cases ***

Validar acesso a pagina de Dropdown list
    Go To    ${url}/dropdown
    Page Should Contain    text=Dropdown List

Validar seleção por texto
    Go To    ${url}/dropdown
    Select From List By Label    class:avenger-list           Natasha Romanoff
    ${selecionado}=              Get Selected List Value      class:avenger-list
    Should Be Equal              ${selecionado}               4
    Sleep    3

Validar seleção pelo valor
    Go To    ${url}/dropdown
    Select From List By Value    id=dropdown            6
    Sleep    3

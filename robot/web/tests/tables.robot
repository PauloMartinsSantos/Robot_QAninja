*** Settings ***
Resource        base.robot

Test Setup     Nova sessão
Test Teardown  Encerra sessão

*** Test Cases ***

Validar valor ao informar o numero da linha
    Go To                        ${url}/tables
    Table Row Should Contain     id:actors       1    @robertdowneyjr
    #id:actors - localizador da tabela
    #1 - linha selecionada
    #@robertdowneyjr - valor buscado

Descobre a linha pelo texto chave e valida demais valores 
    Go To             ${url}/tables
    ${target} =       Get WebElement    xpath:.//tr[contains(.,'@robertdowneyjr')]
    Log               ${target.text}
    Should Contain    ${target.text}    Homem de Ferro
    Should Contain    ${target.text}    $ 10.000.000 





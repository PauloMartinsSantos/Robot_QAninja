*** Settings ***
Resource    amazon_resources.robot  
Test Setup       Nova sessão
Test Teardown    Encerrar sessão

*** Test Cases ***

Test case 01 - Validar página disponível para consulta
   Wait Until Element Is Visible       ${main_link}
   Sleep    3 

Test case 02 - Acesso ao menu "Eletrônicos"
    [Tags]    menu_eletronicos
    Acessar menu eletronicos
    Page Should Contain     Eletrônicos e Tecnologia
    Wait Until Element Is Visible     ${menu_login}
    Sleep    3
# - Verificar se aparece a categoria "Computadores e Informática"


   
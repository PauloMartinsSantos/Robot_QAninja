*** Settings ***
Resource    amazon_resources.robot  
Test Setup       Nova sessão
Test Teardown    Encerrar sessão

*** Test Cases ***

Validar página disponível para consulta
   Wait Until Element Is Visible       ${main_link}
   Sleep    3 
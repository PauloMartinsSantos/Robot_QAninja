*** Settings ***
Resource        base.robot

Test Setup     Nova sessão
Test Teardown  Encerra sessão

*** Test Cases ***

Validar login com sucesso
    Go To                   ${url}/login
    Login With    stark    jarvis!
    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!
    Sleep    3

Validar logout com sucesso
    Go To                   ${url}/login
    Login With        stark    jarvis!
    Should See Logged User     Tony Stark
    Click Element              class: icon-signout
    Page Should Contain         Você saiu da área logada!
    Sleep    3

Validar mensagem de senha invalida
    [Tags]    smoke
    Go To                   ${url}/login
    Login With    stark     SENHA_INCORRETA
    Click Button            css:button[type=submit]

    Should Contain Login Alert         Senha é invalida!
 
Validar mensagem de usuário inexistente
    Go To                   ${url}/login
    Login With              usr_inexistente    jarvis!
    Click Button            css:button[type=submit]

    Should Contain Login Alert       O usuário informado não está cadastrado! 

        
*** Keywords ***
Login With
     [Arguments]    ${usr_name}    ${pass}

    Input Text              css:input[name=username]    ${usr_name}
    Input Password          css:input[name=password]    ${pass}
    Click Button            css:button[type=submit]

Should Contain Login Alert
    [Arguments]    ${expected_message}

    ${msg}=                 Get WebElement           id:flash
    Should Contain          ${msg.text}              ${expected_message}

Should See Logged User
    [Arguments]    ${full_name}
    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!

    
    
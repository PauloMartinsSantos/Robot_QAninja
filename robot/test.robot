*** Settings ***
Library        app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
  ${result}=          Welcome        Paulo
  Should Be Equal     ${result}     Olá Paulo, be vindo ao Curso básico de Robot Framework!
  Log To Console      ${result}
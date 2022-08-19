## Comando terminal para executar teste com tag
    robot -d ./log -i nome_tag nome_teste.robot 
        -d: ./log retorna uma pasta e centraliza o report na pasta log
        -i: comando biblioteca do selenium (include)

## Configuração para inibir mensagem de erro no console por conta da library selenium no chrome
 Ao declarar o open browser adicionar parâmetro options
    chrome      options=add_experimental_option('excludeSwitches', ['enable-logging'] )


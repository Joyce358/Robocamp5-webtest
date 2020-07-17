***Settings***
Documentation       Exclusão de produtos
...                 Sendo um administrador de catálogos que possui produtos indesejados
...                 Quero deletar esses produtos
...                 Para que eu possa manter meu catálogo organizado

Resource        ../resources/actions.robot

Suite Setup         Login Session       papito@ninjapixel.com   pwd123
Suite Teardown      Close Session

Test Teardown       End Test  

***Test Cases***
Novo produto
    Dado que tenho um novo produto  dk.json
    Quando faço o cadastro desse produto
    Então devo ver este item na lista

Produto duplicado
    [tags]      dup
    Dado que tenho um novo produto   master.json
    Mas este produto já foi cadastrado
    Quando faço o cadastro desse produto
    Então devo ver a mensagem de alerta     Oops - Este produto já foi cadastrado!
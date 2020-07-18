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
Apagar produto
    [tags]    delete_product
    Dado que "mario.json" é um produto indesejado
    Quando solicito a Exclusão
    E confirmo a solicitação
    Então não devo ver esse item no catálogo

Desistir da remoção
    Dado que eu tenho o produto "zelda.json"
    Quando solicito a Exclusão
    Mas cancelo a solicitação
    Então devo ver este item na lista

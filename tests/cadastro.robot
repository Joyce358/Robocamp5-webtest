***Settings***
Documentation       Cadastro de produtos
...                 Sendo um administrador de catálogos
...                 Quero cadastrar novos produtos
...                 Para que eu possa disponibilizá-los na loja virtual

Resource        ../resources/actions.robot

Suite Setup         Login Session       papito@ninjapixel.com   pwd123
Suite Teardown      Close Session

Test Teardown       End Test  

***Test Cases***
Novo produto
    [tags]      new_product
    Dado que tenho um novo produto  dk.json
    Quando faço o cadastro desse produto
    Então devo ver este item na lista

Produto duplicado
    [tags]      dup
    Dado que tenho um novo produto   master.json
    Mas este produto já foi cadastrado
    Quando faço o cadastro desse produto
    Então devo ver a mensagem de alerta     Oops - Este produto já foi cadastrado!

***Settings***
Documentation       Cadastro de produtos
...                 Sendo um administrador de catálogos
...                 Quero cadastrar novos produtos
...                 Para que eu possa disponibilizá-los na loja virtual

Library     OperatingSystem
Resource        ../resources/actions.robot

Suite Setup         Login Session       papito@ninjapixel.com   pwd123
Suite Teardown      Close Session

Test Teardown       End Test  

***Test Cases***
Novo produto
    Dado que tenho um novo produto  dk.json
    Quando eu cadastro este produto
    Então devo ver este item na lista

***Keywords***

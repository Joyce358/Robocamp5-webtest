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

***Keywords***
Dado que tenho um novo produto
    [Arguments]     ${json_file}

    ${string_file}=         Get File    ${EXECDIR}/resources/fixtures/${json_file}
    ${product_json}=        Evaluate     json.loads ($string_file)      json  

    Set Test Variable       ${product_json}    ##essa variável vai ficar disponível durante td execução do test case  

Quando eu cadastro este produto
    Wait Until Element Is Visible       class:product-add
    Click Element                       class:product-add
    Input Text      css:input[placeholder$="produto?"]      ${product_json['title']}

    Sleep   15

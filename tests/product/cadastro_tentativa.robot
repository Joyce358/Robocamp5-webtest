***Settings***
Documentation       Tentativa de Cadastro de produtos
...                 Estes testes enriquecem a história da Suite cadastro.robot

Resource        ../../resources/actions.robot

Suite Setup         Product Add Session       papito@ninjapixel.com   pwd123
Suite Teardown      Close Session

Test Setup          Go To Route Form      
Test Teardown       End Test  
Test Template       Tentar cadastrar produtos

***Keywords***
Tentar cadastrar produtos
    [Arguments]     ${json_file}        ${expect_message}

    Dado que tenho um novo produto      ${json_file}
    Quando tento cadastrar esse produto
    Então devo ver uma mensagem informativa  ${expect_message}

***Test Cases***
Nome não informado          contra.json         Oops - Informe o nome do produto!
Categoria não selecionada   streetf2.json       Oops - Selecione uma categoria!
Preço não informado         shinobi.json        Oops - Informe o preço também!
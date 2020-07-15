***Settings***
Documentation       ProductPage - 
...                 Representa a página cadastro de produtos com todos os seus elementos
...                 E também suas funcionalidades

***Variables***
${PRODUCT_ADD}        class:product-add

***Keywords***
Go To Add Form
    Wait Until Element Is Visible   ${PRODUCT_ADD}
    Click Element                   ${PRODUCT_ADD}

Select Category
    [Arguments]     ${cat}

     Click Element   css:input[placeholder^=Gat]

    Wait Until Element Is Visible       xpath://li//span[text()='${cat}']       
    Click Element                       xpath://li//span[text()='${cat}']

Create New Product
    [Arguments]     ${product_json}  # seleciona categoria

    Input Text      css:input[placeholder$="produto?"]      ${product_json['title']} 

    Select Category  ${product_json['cat']} 

    Input Text      css:input[name=price]       ${product_json['price']}

    Click Element   id:create-product
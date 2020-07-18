***Settings***
Documentation       ProductPage - 
...                 Representa a página cadastro de produtos com todos os seus elementos
...                 E também suas funcionalidades

***Variables***
${PRODUCT_ADD}        class:product-add
${ALERT_DANGER}       class:alert-danger
${INPUT_PRODUCERS}    class:producers

***Keywords***
Go To Add Form
    Wait Until Element Is Visible   ${PRODUCT_ADD}
    Click Element                   ${PRODUCT_ADD}


Request Removal
    [Arguments]     ${title}

    Click Element   xpath://tr[td//text()[contains(., '${title}')]]//button

Confirm Removal
    Click Element   class:swal2-confirm

Create New Product
    [Arguments]         ${product_json}  # seleciona categoria

    Input Text          css:input[placeholder$="produto?"]      ${product_json['title']} 
    Select Category     ${product_json['cat']} 
    Input Text          css:input[name=price]                   ${product_json['price']} 
    Input Producers     ${product_json['producers']}
    Input Text          css:textarea[name=description]          ${product_json['desc']}
    
    Click Element   id:create-product

Input Producers
    [Arguments]     ${producers}

    FOR     ${p}     IN     @{producers}
            Input Text      ${INPUT_PRODUCERS}     ${p}
            Press Keys      ${INPUT_PRODUCERS}     TAB     
    END 


Select Category
    [Arguments]     ${cat}

     Click Element   css:input[placeholder^=Gat]

    Wait Until Element Is Visible       xpath://li//span[text()='${cat}']       
    Click Element                       xpath://li//span[text()='${cat}']
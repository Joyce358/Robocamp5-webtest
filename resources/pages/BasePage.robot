Documentation       BasePage - 
...                 Representa a inicialização do Selenium e demais recursos como ganchos e helpers

***Variables***
${base_url}         http://pixel-web:3000

***Keywords***

## helpers
Open Chrome
     Open Browser       ${base_url}      Chrome       options=add_experimental_option('excludeSwitches', ['enable-logging'])

##hooks
Open Session 
    Open Chrome     
    Set Window Size     1440    900

    Set Selenium Implicit Wait  10

Login Session
    [Arguments]      ${email}       ${pass}
    Open Session
    Login With      ${email}       ${pass}      

Close Session
    Close Browser

Clear Local Storage
     Execute Javascript     localStorage.clear(); 

End Test
    Capture Page Screenshot

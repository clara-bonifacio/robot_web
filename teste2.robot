** Settings **
Library  SeleniumLibrary

** Variables **
${SITE_URL}  https://automationpratice.com.br/
${USUARIO_EMAIL}  teste@gmail.com
${USUARIO_SENHA}  123456

** Keywords **

Abrir site
    Open Browser  ${SITE_URL}  chrome
    Esperar elemento  3

Abrir este site
    [Arguments]  ${url}
    Open Browser  ${url}  chrome    
   
Clicar sobre o botao Login 
    Click Element  xpath://a[@href='/login'] 

Digitar email
    Input Text  id:user  ${USUARIO_EMAIL}

Digitar senha 
    Input Text  id:password  ${USUARIO_SENHA} 

Clicar em logar
    Click Element  id:btnLogin 

Verificar texto de login realizado 
    ${texto_atual}  Get Text  id:swal2-title

    Should Be Equal As Strings  ${texto_atual}  Login realizado 
    Esperar elemento  5

Screenshot
    Capture Page Screenshot    

Esperar elemento
    [Arguments]    ${tempo}

    Set Selenium Implicit Wait    ${tempo}s       

** Test Cases ** 
Cenário 1: Acessando o site do Robot 
    [Tags]  Cenario3
    Abrir site  
    Clicar sobre o botao Login
    Digitar email
    Digitar senha   
    Clicar em logar
    Verificar texto de login realizado
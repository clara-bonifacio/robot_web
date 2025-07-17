** Settings **
Library  SeleniumLibrary

** Variables **
${SITE_URL}  https://automationpratice.com.br/
${SITE_URL_CLARA}  https://google.com/
${USUARIO_EMAIL}  teste@gmail.com
${USUARIO_SENHA}  123456

** Keywords **
Abrir site Clara
    Open Browser  ${SITE_URL_CLARA}  chrome

Abrir site
    Open Browser  ${SITE_URL}  chrome

Abrir este site
    [Arguments]  ${url}
    Open Browser  ${url}  chrome    

Aguardar site carregar 
    Sleep  5s

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

Screenshot
    Capture Page Screenshot       

** Test Cases ** 
Cenário 1: Acessando o site do Robot 
    [Tags]  Cenario1
    Abrir site 
    Aguardar site carregar 
    Clicar sobre o botao Login
    Screenshot
    Aguardar site carregar 
    Digitar email
    Digitar senha   
    Clicar em logar
    Screenshot
    Aguardar site carregar 
    Verificar texto de login realizado
    Screenshot

Cenário 2: Testando o Robot 
    [Tags]  Cenario2
    Abrir site Clara
    Aguardar site carregar 
    Clicar sobre o botao Login
    Aguardar site carregar 
    Digitar email
    Digitar senha   
    Clicar em logar
    Aguardar site carregar  
    Verificar texto de login realizado  
    
Cenário 3: Testando valor nos steps 
    [Tags]  Cenario3
    Abrir este site  https://automationpratice.com.br/
    Aguardar site carregar 
    Clicar sobre o botao Login
    Aguardar site carregar 
    Digitar email
    Digitar senha   
    Clicar em logar
    Aguardar site carregar  
    Verificar texto de login realizado 

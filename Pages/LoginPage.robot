***Settings***
Resource        ../Infra/base.robot
Resource        ./AccountPage.robot
***Variables***
${txtUsername}      xpath://input[@placeholder="Email"]
${txtPassword}      xpath://input[@placeholder="Password"]
${btnLogin}         xpath://button[./span[text()="Login"]]
${lblLogin}         xpath://h5[contains(text(),"Login")]

***Keywords
#Funções

Escrever login
    [Arguments]     ${username}
    Input Text      ${txtUsername}      ${username}
    
Escrever senha
    [Arguments]     ${password}
    Input Text      ${txtPassword}      ${password}

Clicar botao login
    Click button    ${btnLogin}

#Funcionalidades
Realize login 
    [Arguments]     ${username}     ${password}

    Escrever login      ${username}
    Escrever senha      ${password}
    Clicar botao login
    
#Passos
Acessar o site principal
    Log to console      Acessou a tela principal
    Ir Para  login

Logar com login e senha corretos
    Realize login       user@phptravels.com       demouser

Deve ser redirecionado para a tela de produtos
    Verificar label Products

Verificar label Login
    Wait Until Page Contains Element        ${lblLogin}


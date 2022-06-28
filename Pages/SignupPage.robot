***Settings***
Resource        ../Infra/base.robot
Resource        ../Pages/LoginPage.robot


***Variables***
${account_type}             xpath://span[@class="selection"]/span
${txtFirstname}             xpath://input[@placeholder="First Name"]
${txtLastname}              xpath://input[@placeholder="Last Name"]
${txtPhone}                 xpath://input[@placeholder="Phone"]
${txtEmail}                 xpath://input[@placeholder="Email"]
${txtPassword}              xpath://input[@placeholder="Password"]
${btnSignup}                xpath://button[./span[text()="Signup"]]

***Keywords***
Selecionar Tipo
    [Arguments]     ${type}
    ${account_types}=       Get WebElement      xpath://li[text()="${type}"]
    Click Element       ${account_types}

Escrever primeiro nome registro
    [Arguments]     ${firstname}
    Input Text      ${txtFirstname}      ${firstname}

Escrever ultimo nome registro
    [Arguments]     ${lastname}
    Input Text      ${txtLastname}      ${lastname}

Escrever telefone registro
    [Arguments]     ${phone}
    Input Text      ${txtPhone}      ${phone}

Escrever email registro
    [Arguments]     ${email}
    Input Text      ${txtEmail}      ${email}

Escrever senha registro
    [Arguments]     ${password}
    Input Text      ${txtPassword}      ${password}

Clicar botao signup 
    Click button    ${btnSignup}

Acessar o site de Registro
    Ir Para     signup


Realize preenchimento
    [Arguments]     ${firstname}        ${lastname}         ${email}            ${phone}            ${password}
    Escrever primeiro nome registro         ${firstname}
    Escrever ultimo nome registro           ${lastname} 
    Escrever email registro                 ${email}
    Escrever telefone registro              ${phone}
    Escrever senha registro                 ${password}

Preencher as informações da tela
    ${firstname}=       Sortear Nome
    ${lastname}=        Sortear Sobrenome
    ${email}=           Sortear Email
    ${phone}=           Sortear Telefone
    ${password}=        Sortear Senha

    Realize preenchimento  ${firstname}  ${lastname}  ${email}  ${phone}  ${password}
    Click Element       ${account_type}
    Selecionar Tipo     Agent

Clicar em Registrar
    Clicar botao signup 

Deve ser redirecionado para a tela de login
    Verificar label Login
    
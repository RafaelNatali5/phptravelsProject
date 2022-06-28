***Settings***
Resource        ../Infra/base.robot
Resource        ./AccountPage.robot
***Variables***
${txtFirstname}=         //input[@name="firstname"]
${txtLastname}=          //input[@name="lastname"]

***Keywords***
Alterar primeiro nome
    [Arguments]     ${firstname}
    Input Text      ${txtFirstname}      ${firstname}

Alterar ultimo nome
    [Arguments]     ${lastname}
    Input Text      ${txtLastname}      ${lastname}

Realize alteração dos nomes
    [Arguments]     ${firstname}        ${lastname} 
    Alterar primeiro nome  ${firstname}
    Alterar ultimo nome  ${lastname}

Preencher informações da alteração
    ${firstname}=       Sortear Nome
    ${lastname}=        Sortear Sobrenome
    Realize alteração dos nomes  ${firstname}  ${lastname}

Clicar no botão de Update

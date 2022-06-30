***Settings***
Resource        ../Infra/base.robot
Resource        ./AccountPage.robot
***Variables***
${txtprofFirstname}=         xpath://input[@name="firstname"]
${txtprofLastname}=          xpath://input[@name="lastname"]
${btnUpdate}=                xpath://*[@id="fadein"]/section[1]/div/div[2]/div/div[1]/div/div/div[2]/form/div[3]/button
${txtFirstnameValue}=       xpath://input[@name="firstname"]
#${btnGotIt}=                 xpath://button[@id="cookie_stop"]

***Keywords***
#Tirar cookie
   # Click button       ${btnGotIt}
Alterar primeiro nome
    [Arguments]     ${firstname}
    Input Text      ${txtprofFirstname}      ${firstname}

Captura nome
    [Arguments]     ${firstnamevalue}
    Input Text      ${txtFirstnameValue}      ${firstnamevalue}

Realize alteração dos nomes
    [Arguments]     ${firstname}
    Alterar primeiro nome  ${firstname}

Preencher informações da alteração
    ${firstname}=       Sortear Nome
    Realize alteração dos nomes  ${firstname}
    Comparar valores        ${firstname}

Clicar no botão de Update   
#Não consegui fazer com o click pois ele estava sendo interceptado, mesmo clicando no cookie.
    Press keys        NONE      ENTER

Comparar valores
    [Arguments]     ${firstname}
    Should Be Equal As Strings    ${firstname}    ${firstnamevalue}
   
    Sleep       50s
    

    


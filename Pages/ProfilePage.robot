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

Alterar ultimo nome
    [Arguments]     ${lastname}
    Input Text      ${txtprofLastname}      ${lastname}

Captura nome
    [Arguments]     ${firstnamevalue}
    Input Text      ${txtFirstnameValue}      ${firstnamevalue}

Realize alteração dos nomes
    [Arguments]     ${firstname}        ${lastname} 
    Alterar primeiro nome  ${firstname}
    Alterar ultimo nome  ${lastname}

Preencher informações da alteração
    ${firstname}=       PrimeiroNomeAlterado
    ${lastname}=        UltimoNomeAlterado
    Realize alteração dos nomes  ${firstname}  ${lastname}

Clicar no botão de Update   
#Não consegui fazer com o click pois ele estava sendo interceptado, mesmo clicando no cookie.
    Press keys        NONE      ENTER

Comparar valores
    Should Be Equal As Strings    PrimeiroNomeAlterado    ${firstnamevalue}
   
    Sleep       50s
    

    


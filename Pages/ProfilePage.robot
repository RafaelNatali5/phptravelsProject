***Settings***
Resource        ../Infra/base.robot
Resource        ./AccountPage.robot
***Variables***
${txtprofFirstname}=         xpath://input[@name="firstname"]
${btnUpdate}=                xpath://*[@id="fadein"]/section[1]/div/div[2]/div/div[1]/div/div/div[2]/form/div[3]/button
${txtFirstnameValue}=       Get WebElement     xpath://input[@name="firstname"]
#${btnGotIt}=                 xpath://button[@id="cookie_stop"]
${novoNome}=        NovoNome

***Keywords***
#Tirar cookie
   # Click button       ${btnGotIt}
Alterar primeiro nome
    [Arguments]     ${firstname}
    Input Text      ${txtprofFirstname}      ${firstname}


Realize alteração dos nomes
    [Arguments]     ${firstname}
    Alterar primeiro nome  ${firstname}

Preencher informações da alteração
    Realize alteração dos nomes     ${novoNome}
    

Clicar no botão de Update   
#Não consegui fazer com o click pois ele estava sendo interceptado, mesmo clicando no cookie.
    Press keys        NONE      ENTER

Comparar valor
    ${txtFirstnameValue}=       Get Element Attribute     xpath://input[@name="firstname"]     value
    Should Be Equal     ${novoNome}    ${txtFirstnameValue}


   
    

    


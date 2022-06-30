***Settings***
Resource        ../Infra/base.robot
Resource        ./AccountPage.robot
***Variables***
${txtprofFirstname}=         xpath://input[@name="firstname"]
#${btnUpdate}=                xpath://button[@type="submit"]
#${btnGotIt}=                xpath://button[@id="cookie_stop"]
${lblSuccess}=               xpath://div[@class="alert alert-success"]               

***Keywords***
#Tirar cookie
   # Click button       ${btnGotIt}
Escrever novo primeiro nome
    [Arguments]     ${newfirstname}
    Input Text      ${txtprofFirstname}      ${newfirstname}
    Comparar valor  ${newfirstname}


Realize preenchimento do novo nome
    [Arguments]         ${newfirstname}     
    Escrever novo primeiro nome              ${newfirstname}

Preencher o novo nome
    ${newfirstname}=                        Sortear Nome
    Realize preenchimento do novo nome      ${newfirstname}
    

Clicar no botão de Update   
#Não consegui fazer com o click pois ele estava sendo interceptado, mesmo clicando no cookie.
    #Click button      ${btnUpdate}  
    Press keys        NONE      ENTER

Verifical label sucesso
    Wait Until Page Contains Element        ${lblSuccess}

Comparar valor
    [Arguments]     ${newfirstname}
    ${firstnamecapture}=       Get Element Attribute     xpath://input[@name="firstname"]     value
    Should Be Equal     ${newfirstname}     ${firstnamecapture}
    Log to console      ${newfirstname}     
    Log to console      ${firstnamecapture}

Deve apresentar sucesso na alteração
    Verifical label sucesso

    


   
    

    


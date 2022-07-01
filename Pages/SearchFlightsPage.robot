***Settings***
Resource        ../Infra/base.robot
Resource        ../Pages/LoginPage.robot
Resource        ./FlightsPage.robot
                



**Variables***
${txtFlyingFrom}=           xpath://input[@id="autocomplete"]
${txtDestination}=          xpath://input[@id="autocomplete2"]
${buttonSearch}=            xpath://button[@id="flights-search"]

***Keywords***
Escrever de onde será a partida
    [Arguments]     ${From}
    Input Text      ${txtFlyingFrom}      ${From}

Escrever qual será o destino
    [Arguments]     ${Destination}
    Input Text      ${txtDestination}      ${Destination}

Click botão procurar    
    Click button        ${buttonSearch}

Acessar o site de voo
    Ir Para         flights  

Realizar preenchimento do voo
    [Arguments]     ${From}     ${Destination}
    Escrever de onde será a partida         ${From}
    Escrever qual será o destino            ${Destination}

Preencher informações do voo
    Realizar preenchimento do voo  gru      jpa 

Clicar em procurar
    Click botão procurar

Deve apresentar contador de voos
    Verificar contador de voos

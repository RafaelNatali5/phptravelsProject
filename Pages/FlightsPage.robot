***Settings***
Resource        ../Infra/base.robot
#Resource        ../Page/SearchFlightsPage.robot

***Variables***
${objCount}=            xpath://ul[@class="list-items d-flex justify-content-end"]

***Keywords***
Verificar contador de voos
    Wait Until Page Contains Element       ${objCount} 
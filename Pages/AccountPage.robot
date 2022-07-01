***Settings***
Resource        ../Infra/base.robot

***Variables***
${lblProducts}      xpath://h2[contains(text(),"Hi")]
${btnProfile}       xpath://ul[@class="sidebar-menu list-items"]//li[@class="page-active"]//a[contains(text(),"My Profile")]

***Keywords***
Verificar label Products
    Wait Until Page Contains Element        ${lblProducts}

Ir para meu perfil
    Ir Para         account/profile

Clicar botão profile
    Click button        ${btnProfile}  
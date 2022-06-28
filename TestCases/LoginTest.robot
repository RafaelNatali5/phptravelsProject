***Settings***
Resource        ../Pages/LoginPage.robot
Resource        ../Pages/SignupPage.robot
Resource        ../Pages/ProfilePage.robot

Test Setup          Open Session
Test Teardown       Close Session

***Test Cases***
Realizar login com sucesso
    [Tags]      login   loginSucesso
    Acessar o site principal
    Logar com login e senha corretos
    Deve ser redirecionado para a tela de produtos

Realizar login com falha
    [Tags]      login   loginFalha
    Acessar o site principal
    Logar com login e senha incorreta
    Deve apresentar Error

Registro de usuario
    [Tags]      login   registro
    Acessar o site de Registro
    Preencher as informações da tela
    Clicar em Registrar
    Deve ser redirecionado para a tela de login

Alterar dados
   # Tirar cookie
    Acessar o site principal
    Logar com login e senha corretos
    Ir para meu perfil
    Preencher informações da alteração
    Clicar no botão de Update
    Sleep       4s

Verificar dados
    Acessar o site principal
    Logar com login e senha corretos
    Ir para meu perfil
    Sleep       10s
    

*** Settings ***

Resource    ../../base.robot

Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***

Teste carrossel botão pix
    Dado que o usuário está na tela inicial
    Então consegue acessar a funcionalidade de PIX
    E consegue visualizar todas as funcoes do PIX


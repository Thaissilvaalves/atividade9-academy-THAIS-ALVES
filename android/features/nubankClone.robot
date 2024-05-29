*** Settings ***

Resource    ../../base.robot

Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***

Teste carrossel botão pix
    Dado que o usuário está na tela inicial
    Então consegue acessar a funcionalidade de PIX
    E consegue visualizar todas as funcoes do PIX

Teste carossel botão pagar
    Dado que o usuário está na tela inicial
    Então consegue acessar a funcionalidade de pagamento
    E consegue visualizar todas as funcoes de pagamento

Teste carrossel botão transferir
    Dado que o usuário está na tela inicial
    Então consegue acessar a funcionalidade de transferência
    E consegue visualizar todas as funcoes de transferência
Teste carrossel botão depositar
    Dado que o usuário está na tela inicial
    Então consegue acessar a funcionalidade de depósito
    E consegue visualizar todas as funcoes de depósito

Teste carrossel botão empréstimos
    Dado que o usuário está na tela inicial
    Então consegue acessar a funcionalidade de empréstimos
    E consegue visualizar todas as funcoes de empréstimos

Teste carrossel botão recarga celular
    Dado que o usuário está na tela inicial
    Então consegue acessar a funcionalidade de recarga de celular
    E consegue visualizar todas as funcoes de recarga de celular
Teste carrossel botão cobrar
    Dado que o usuário está na tela inicial
    Então consegue acessar a funcionalidade de cobrança
    E consegue visualizar todas as funcoes de cobrança

Teste carrossel botão doação
    Dado que o usuário está na tela inicial
    Então consegue visualizar o botão de doação
Teste carrossel botão encontrar atalhos
    Dado que o usuário está na tela inicial
    Então consegue visualizar o botão de encontrar atalhos

Teste de validação de saldo da conta
    Dado que o usuário está na tela inicial
    Então consegue acessar a funcionalidade de conta
    E consegue visualizar o saldo da conta
    E consegue retornar da tela de conta para a tela inicial

Teste de funcionalidade de cartão de crédito
    Dado que o usuário está na tela inicial
    Então consegue acessar a funcionalidade de cartão de crédito
    E consegue visualizar os dados da fatura
    E consegue visualizar o histórico de transações do cartão
    E consegue retornar da tela do cartão para a tela inicial


*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
#Prefixos
${prefixoCarrossel}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]

#Botoes Carrossel
${BOTAO_PIX}    ${prefixoCarrossel}    /android.widget.Button[1]
${BOTAO_PAGAR}  ${prefixoCarrossel}    /android.widget.Button[2]
${BOTAO_TRANSFERIR}  ${prefixoCarrossel}    /android.widget.Button[3]
${BOTAO_DEPOSITAR}  ${prefixoCarrossel}    /android.widget.Button[4]
${BOTAO_EMPRESTIMOS}  ${prefixoCarrossel}    /android.widget.Button[1]
${BOTAO_RECARGA}  ${prefixoCarrossel}    /android.widget.Button[2]
${BOTAO_COBRAR}  ${prefixoCarrossel}    /android.widget.Button[3]
${BOTAO_DOACAO}  ${prefixoCarrossel}    /android.widget.Button[4]
${BOTAO_ENCONTRARATALHOS}  ${prefixoCarrossel}    /android.widget.Button[5]

#Conta
${BOTAO_CONTA}         xpath=//android.view.View[@content-desc="Conta\nR$ 181,79"]
${SALDO_DISPONIVEL}    xpath=//android.view.View[@content-desc="Saldo disponível"]
${DINHEIRO_GUARDADO}   xpath=//android.view.View[@content-desc="Dinheiro guardado\nR$ 240,02"]
${RENDIMENTO_CONTA}    xpath=//android.view.View[@content-desc="Rendimento total da conta\n+R$ 0,20 este mês"]
${HISTORICO}           xpath=//android.view.View[@content-desc="Histórico"]
${HISTORICO1}          xpath=//android.view.View[contains(@content-desc, "PATRICIA")]
${HISTORICO2}          xpath=//android.view.View[contains(@content-desc, "ANDRE JEY")]
${HISTORICO3}          xpath=//android.view.View[contains(@content-desc, "ERIKO")]
${HISTORICO4}          xpath=//android.view.View[contains(@content-desc, "IVAN")]
${CONTA_VOLTAR}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]

#Cartão de crédito
${CARTAO_CREDITO}         xpath=//android.view.View[@content-desc="Cartão de Crédito\nFatura atual\nR$ 780,72\nLimite disponível R$ 806,78"]
${FATURA_ATUAL}           xpath=//android.view.View[@content-desc="Fatura atual"]
${VALOR_FATURA}           xpath=//android.view.View[@content-desc="R$ 780,72"]
${PAGAR_FATURA}           xpath=//android.view.View[@content-desc="Pagar fatura"]
${RESUMO_FATURA}          xpath=//android.view.View[@content-desc="Resumo de faturas"]
${LIMITES_FATURA}         xpath=//android.view.View[@content-desc="Ajustar limites"]
${CARTAO_VIRTUAL}         xpath=//android.view.View[@content-desc="Cartão virtual"]
${FATURA1}                xpath=//android.view.View[contains(@content-desc, "Pagamento recebido")]
${FATURA2}                xpath=//android.view.View[contains(@content-desc, "Supermercado")]
${FATURA3}                xpath=//android.view.View[@content-desc="Transferência enviada\nOntem\nBRENO FREITAS\nR$ 30,00\nPix"]
${PESQUISA_CARTAO}        xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${CARTAO_VOLTAR}          xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]


#Textos
${TELA_INICIAL}      xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]

#Pix
${AREA_PIX}          xpath=//android.widget.ImageView[contains(@content-desc, "Minha área Pix")]
${FECHA_PIX}         xpath=//android.widget.ImageView/android.widget.Button[1]
${PAGAR_PIX}         xpath=//android.widget.ImageView/android.widget.Button[2]        
${TRANSFERIR_PIX}    xpath=//android.widget.ImageView/android.widget.Button[3]
${COBRAR_PIX}        xpath=//android.widget.ImageView/android.widget.Button[4]
${CHAVES_PIX}        xpath=//android.view.View[@content-desc="Minhas chaves"]
${LIMITES_PIX}       xpath=//android.view.View[@content-desc="Meu limite Pix"]
${MEAJUDA_PIX}       xpath=//android.view.View[@content-desc="Me ajuda"]

#Pagamento
${PAGAR_PIX}       xpath=//android.view.View[contains(@content-desc, "Pagar com Pix")]
${PAGAR_FATURA}    xpath=//android.view.View[contains(@content-desc, "Pagar fatura do cartão")]
${PAGAR_BOLETO}    xpath=//android.view.View[contains(@content-desc, "Pagar um boleto")]   

#Transferência
${TRANSFERIR_VALOR}       xpath=//android.widget.EditText[@text="R$ 0,00"]
${TRANSFERIR_CAMPO}       xpath=//android.widget.EditText
${TRANSFERIR_FECHAR}      xpath=//android.widget.EditText[@text="R$ 0,00"]/android.view.View/android.widget.Button[1]
${TRANSFERIR_QRCODE}      xpath=//android.widget.EditText[@text="R$ 0,00"]/android.view.View/android.widget.Button[2]  

#Depósito
${DEPOSITAR_PIX}        xpath=//android.view.View[contains(@content-desc, "Pix")]
${DEPOSITAR_BOLETO}     xpath=//android.view.View[contains(@content-desc, "Boleto")]
${DEPOSITAR_TEDDOC}     xpath=//android.view.View[contains(@content-desc, "TED/DOC")]
${DEPOSITAR_SALARIO}    xpath=//android.view.View[contains(@content-desc, "Trazer seu salário")]

#Empréstimos
${NOVO_EMPRESTIMO}             xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${VALOR_EMPRESTIMO}            xpath=//android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${FUNCIONAMENTO_EMPRESTIMO}    xpath=//android.view.View[@content-desc="Entenda como funciona >"]

#Recarga
${RECARGA_NUMERO}      xpath=//android.widget.EditText

#Cobrança
${COBRANCA_VALOR}    xpath=//android.widget.EditText[@text="R$ 0,00"]
${CAMPO_COBRANCA}    xpath=//android.widget.EditText
  
*** Keywords ***
Dado que o usuário está na tela inicial
    Visualiza o botao        ${TELA_INICIAL}

Então consegue acessar a funcionalidade de PIX
    Clica no botao e espera    ${BOTAO_PIX}    ${AREA_PIX}
E consegue visualizar todas as funcoes do PIX
    Visualiza o botao    ${FECHA_PIX}
    Visualiza o botao    ${PAGAR_PIX}
    Visualiza o botao    ${TRANSFERIR_PIX}
    Visualiza o botao    ${COBRAR_PIX}
    Visualiza o botao    ${CHAVES_PIX}
    Visualiza o botao    ${LIMITES_PIX}
    Visualiza o botao    ${MEAJUDA_PIX}

Então consegue acessar a funcionalidade de pagamento
    Clica no botao    ${BOTAO_PAGAR}
E consegue visualizar todas as funcoes de pagamento
    Visualiza o atalho    ${PAGAR_PIX}
    Visualiza o atalho    ${PAGAR_FATURA}
    Visualiza o atalho    ${PAGAR_BOLETO}

Então consegue acessar a funcionalidade de transferência
    Clica no botao    ${BOTAO_TRANSFERIR}
E consegue visualizar todas as funcoes de transferência
    Visualiza o atalho    ${TRANSFERIR_VALOR}
    Visualiza o atalho    ${TRANSFERIR_CAMPO}
    Visualiza o botao     ${TRANSFERIR_FECHAR}
    Visualiza o botao     ${TRANSFERIR_QRCODE}

Então consegue acessar a funcionalidade de depósito
    Clica no botao    ${BOTAO_DEPOSITAR}
E consegue visualizar todas as funcoes de depósito
    Visualiza o atalho    ${DEPOSITAR_PIX}
    Visualiza o atalho    ${DEPOSITAR_BOLETO}
    Visualiza o atalho    ${DEPOSITAR_TEDDOC}
    Visualiza o atalho    ${DEPOSITAR_SALARIO}

Então consegue acessar a funcionalidade de empréstimos
    Swipe By Percent    90    40    0    40
    Clica no botao    ${BOTAO_EMPRESTIMOS}
E consegue visualizar todas as funcoes de empréstimos
    Visualiza o atalho    ${VALOR_EMPRESTIMO}
    Visualiza o atalho    ${FUNCIONAMENTO_EMPRESTIMO}
    Visualiza o botao    ${NOVO_EMPRESTIMO}
Então consegue acessar a funcionalidade de recarga de celular
    Swipe By Percent    90    40    0    40
    Clica no botao    ${BOTAO_RECARGA}
E consegue visualizar todas as funcoes de recarga de celular
    Visualiza o atalho    ${RECARGA_NUMERO}
    ${texto_hint}=    Get Element Attribute    ${RECARGA_NUMERO}    hint
    Should Contain    ${texto_hint}    Qual número você quer recarregar?
    Should Contain    ${texto_hint}    (DDD) + Número
    Input Text                     ${RECARGA_NUMERO}    31993966422
    Element Should Contain Text    ${RECARGA_NUMERO}    (31) 99396-6422
Então consegue acessar a funcionalidade de cobrança
    Swipe By Percent    90    40    0    40
    Clica no botao    ${BOTAO_COBRAR}
E consegue visualizar todas as funcoes de cobrança
    Visualiza o atalho    ${COBRANCA_VALOR}
    Element Should Contain Text     ${COBRANCA_VALOR}    R$ 0,00
    ${texto_hint}=    Get Element Attribute    ${CAMPO_COBRANCA}    hint
    Should Contain    ${texto_hint}    Qual valor você quer receber?
    Input Text                      ${CAMPO_COBRANCA}           1000
    Element Should Contain Text     ${CAMPO_COBRANCA}    R$ 10,00

Então consegue visualizar o botão de doação
    Swipe By Percent    90    40    0    40
    Visualiza o botao    ${BOTAO_DOACAO}
Então consegue visualizar o botão de encontrar atalhos
    Swipe By Percent    90    40    0    40
    Visualiza o botao    ${BOTAO_ENCONTRARATALHOS}

Então consegue acessar a funcionalidade de conta
    Clica no atalho    ${BOTAO_CONTA}
E consegue visualizar o saldo da conta
    Visualiza o atalho    ${SALDO_DISPONIVEL}
    Visualiza o atalho    ${DINHEIRO_GUARDADO}
    Visualiza o atalho    ${RENDIMENTO_CONTA}
E consegue visualizar o histórico de transações da conta
    Visualiza o atalho    ${HISTORICO}
    Visualiza o atalho    ${HISTORICO1}
    Visualiza o atalho    ${HISTORICO2}
    Visualiza o atalho    ${HISTORICO3}
    Visualiza o atalho    ${HISTORICO4}

E consegue retornar da tela de conta para a tela inicial
    Clica no botao    ${CONTA_VOLTAR}

Então consegue acessar a funcionalidade de cartão de crédito
    Clica no atalho    ${CARTAO_CREDITO}

E consegue visualizar os dados da fatura
    Visualiza o atalho    ${FATURA_ATUAL}
    Visualiza o atalho    ${PAGAR_FATURA}
    Visualiza o atalho    ${RESUMO_FATURA}
    Visualiza o atalho    ${LIMITES_FATURA}
    Visualiza o atalho    ${CARTAO_VIRTUAL}
E consegue visualizar o histórico de transações do cartão
    Swipe By Percent    50    90    50    20    1000
    Visualiza o atalho    ${FATURA1}
    Visualiza o atalho    ${FATURA2}
    Visualiza o atalho    ${FATURA3}
E consegue retornar da tela do cartão para a tela inicial
    Clica no botao    ${CARTAO_VOLTAR}

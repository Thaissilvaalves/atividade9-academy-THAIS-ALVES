*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
#Prefixos
${prefixoCarrossel}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]

#Botoes Carrossel
${BOTAO_PIX}    ${prefixoCarrossel}    /android.widget.Button[1]



#Textos
${TELA_INICIAL}      xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]

#Pix
${AREA_PIX}          xpath=//android.widget.ImageView[contains(@content-desc, "Minha área Pix")]
${PAGAR_PIX}         xpath=//android.widget.ImageView/android.widget.Button[2]        
${TRANSFERIR_PIX}    xpath=//android.widget.ImageView/android.widget.Button[3]
${COBRAR_PIX}        xpath=//android.widget.ImageView/android.widget.Button[4]
${CHAVES_PIX}        xpath=//android.view.View[@content-desc="Minhas chaves"]
${LIMITES_PIX}       xpath=//android.view.View[@content-desc="Meu limite Pix"]
${MEAJUDA_PIX}       xpath=//android.view.View[@content-desc="Me ajuda"]

*** Keywords ***
Dado que o usuário está na tela inicial
    Visualiza o botao        ${TELA_INICIAL}

Então consegue acessar a funcionalidade de PIX
    Clica no botao e espera    ${BOTAO_PIX}    ${AREA_PIX}
E consegue visualizar todas as funcoes do PIX
    Visualiza o botao    ${PAGAR_PIX}
    Visualiza o botao    ${TRANSFERIR_PIX}
    Visualiza o botao    ${COBRAR_PIX}
    Visualiza o botao    ${CHAVES_PIX}
    Visualiza o botao    ${LIMITES_PIX}
    Visualiza o botao    ${MEAJUDA_PIX}
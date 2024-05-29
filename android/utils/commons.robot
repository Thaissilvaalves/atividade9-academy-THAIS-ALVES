*** Settings ***

Resource    ../../base.robot

*** Keywords ***
Visualiza o botao
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Visible        ${elemento}

Visualiza o atalho
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Visible        ${elemento}

Clica no botao
    [Arguments]     ${elemento}  
    Click Element    ${elemento}

Clica no atalho
    [Arguments]     ${elemento}  
    Click Element    ${elemento}


Clica no botao e espera
    [Arguments]     ${elemento}    ${elementoAEsperar}
    Click Element    ${elemento}
    Wait Until Element Is Visible    ${elementoAEsperar}
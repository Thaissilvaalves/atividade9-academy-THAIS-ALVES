*** Settings ***

Resource    ../../base.robot

*** Keywords ***
Visualiza o botao
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Visible        ${elemento}

Clica no botao e espera
    [Arguments]     ${elemento}    ${elementoAEsperar}
    Click Element    ${elemento}
    Wait Until Element Is Visible    ${elementoAEsperar}
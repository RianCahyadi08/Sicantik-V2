*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Dashboard SLA
    Go To    https://uji.sicantik.go.id/dashboard-sla-admin
    Wait Until Page Contains    Dashboard
    Sleep    2s

Input Tgl Mulai
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[1]/div/div/div[1]/div/div/input
    [Arguments]     ${tglMulai}
    Input Text    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[1]/div/div/div[1]/div/div/input    ${tglMulai}

Input Tgl Selesai
    Press Keys      None    TAB
    [Arguments]     ${tglSelesai}
    Press Keys      None    ${tglSelesai}
*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Profile Saya
    Go To    https://uji.sicantik.go.id/profile
    Sleep    2s
    Page Should Contain    Data Profile

Update Password
    Wait Until Element Is Visible    //*[@href="#password"]
    Click Element    //*[@href="#password"]
    Sleep    1s
    Input Password    Kartu123*@#
    Input Konfirmasi Password    Kartu123*@#
    Click Btn Simpan

Input Password
    Wait Until Element Is Visible    name:password
    [Arguments]     ${param}
    Input Text    name:password    ${param}

Input Konfirmasi Password
    Wait Until Element Is Visible    name:password2
    [Arguments]     ${param}
    Input Text    name:password2    ${param}

Click Btn Simpan
    Press Keys      None    TAB
    Sleep    0.5s
    Press Keys      None    ENTER
*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Firefox
${SPEED}            0.1s

*** Keywords ***
Move To Registrasi Pemohon
    Go To    https://uji.sicantik.go.id/pemohon-register
    Wait Until Page Contains    Registrasi Pemohon
    Sleep    3s

Click Btn Filter
    Click Button    default:Filter
#    Click Button    //*[@class="btn btn-white border collapsed"]
    Wait Until Page Contains    ID Pemohon
    
Input No Identitas
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div[2]/label
    Press Keys      None    TAB
    [Arguments]     ${noIdentitas}
    Press Keys      None    ${noIdentitas}
    
Click Btn Tampilkan Hasil
    Click Button    //*[@class="btn btn-primary me-2"]
    Sleep    2s
    
Approve Registrasi Pemohon
    Wait Until Element Is Visible    class:fa-check
    Click Element    class:fa-check
    Wait Until Page Contains    Approve registrasi pemohon ini?
    Press Keys      None        ENTER
    Sleep    3s
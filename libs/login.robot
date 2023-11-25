*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Firefox
${SPEED}            0.1s

*** Keywords ***
Open Browser Website
    Open Browser                ${LOGIN URL}       ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Username
    Set Selenium Speed          ${SPEED}

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    kt_sign_in_submit
    Sleep    5s

Lupa Kata Sandi
#    Click Element    default:Lupa kata sandi?
#    Click Element    partial link:/forgot
    Go To   https://uji.sicantik.go.id/forgot
    Wait Until Page Contains    LUPA KATA SANDI

Input Username Lupa Kata Sandi
    [Arguments]     ${email}
    Input Text    name:email    ${email}

Click Btn Reset
    Wait Until Element Is Visible    //*[@class="btn btn-primary"]
    Click Button    //*[@class="btn btn-primary"]
    Sleep    1s

Logout
    Click Element    //*[@class="bi bi-box-arrow-left text-white fs-2"]
    Wait Until Page Contains    Apakah anda yakin?
    Press Keys      None    ENTER

Login Admin Instansi
    Input Username    demo
    Input Password    Demo789*@#
    Submit Credentials
    Element Should Contain    xpath://*[@id="kt_header_user_menu_toggle"]/div[2]/span[1]    DEMO

*** Settings ***
Documentation       SC02 - Validasi Field Username
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot

*** Test Cases ***
TC01 - Username tidak boleh mengandung spasi di awal
    [Documentation]     SC01 - Validasi Field Username
    [Tags]      TC01 - Username tidak boleh mengandung spasi di awal
    login.Open Browser Website
    login.Input Username    ${SPACE}kartu1
    login.Input Password    Kartu123*@#
    login.Submit Credentials
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Username harus mandatory, tidak boleh kosong
    [Documentation]     SC01 - Validasi Field Username
    [Tags]      TC01 - Username harus mandatory, tidak boleh kosong
    login.Open Browser Website
#    login.Input Username    ${SPACE}
    login.Input Password    Kartu123*@#
    login.Submit Credentials
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
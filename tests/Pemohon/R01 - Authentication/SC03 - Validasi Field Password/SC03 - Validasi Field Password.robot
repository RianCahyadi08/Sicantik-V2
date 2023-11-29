*** Settings ***
Documentation       SC03 - Validasi Field Password
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot

*** Test Cases ***
TC01 - Password harus mandatory, tidak boleh kosong
    [Documentation]     SC03- Validasi Field Password
    [Tags]      TC01 - Username harus mandatory, tidak boleh kosong
    login.Open Browser Website
    login.Input Username    kartu1
#    login.Input Password    Demo789*@#
    login.Submit Credentials
    Sleep    1s
    Capture Page Screenshot
    [Teardown]    Close Browser
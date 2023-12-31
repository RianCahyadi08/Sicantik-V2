*** Settings ***
Documentation       SC01 - Validasi Username dan Password
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot

*** Test Cases ***
TC01 - Login dengan username yang valid
    [Documentation]     SC01 - Validasi Username dan Password
    [Tags]      TC01 - Login dengan username yang valid
    login.Open Browser Website
    login.Login Pemohon
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Login dengan invalid username
    [Documentation]     SC01 - Validasi Username dan Password
    [Tags]      TC02 - Login dengan invalid username
    login.Open Browser Website
    login.Input Username    kartu1
    login.Input Password    Kartu123*@#dwdw
    login.Submit Credentials
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Login dengan invalid password
    [Documentation]     SC01 - Validasi Username dan Password
    [Tags]      TC03 - Login dengan invalid password
    login.Open Browser Website
    login.Input Username    kartu1
    login.Input Password    test*@#
    login.Submit Credentials
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
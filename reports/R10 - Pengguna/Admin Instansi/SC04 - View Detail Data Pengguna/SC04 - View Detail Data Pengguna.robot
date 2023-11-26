*** Settings ***
Documentation       SC04 - View Detail Data Pengguna
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/pengguna.robot

*** Test Cases ***
TC01 - View Detail Data Pengguna
    [Documentation]     SC04 - View Detail Data Pengguna
    [Tags]      TC01 - View Detail Data Pengguna
    login.Open Browser Website
    login.Login Admin Instansi
    pengguna.Move To Pengguna
    pengguna.Detail Pengguna
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
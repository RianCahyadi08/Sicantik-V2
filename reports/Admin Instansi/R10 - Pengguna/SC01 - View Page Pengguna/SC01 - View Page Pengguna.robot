*** Settings ***
Documentation       SC01 - View Page Pengguna
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/pengguna.robot

*** Test Cases ***
TC01 - View Data Pengguna
    [Documentation]     SC01 - View Page Pengguna
    [Tags]      TC01 - View Data Pengguna
    login.Open Browser Website
    login.Login Admin Instansi
    pengguna.Move To Pengguna
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Pengguna
    [Documentation]     SC01 - View Page Pengguna
    [Tags]      TC01 - Search Data Pengguna
    login.Open Browser Website
    login.Login Admin Instansi
    pengguna.Move To Pengguna
    pengguna.Search    Adm instansi
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
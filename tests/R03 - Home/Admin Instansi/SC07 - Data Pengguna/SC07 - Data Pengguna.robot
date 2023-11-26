*** Settings ***
Documentation       SC07 - Data Pengguna
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/home.robot

*** Test Cases ***
TC01 - View Detail Data Daftar Pengguna
    [Documentation]     SC07 - Data Pengguna
    [Tags]      TC01 - View Detail Data Daftar Pengguna
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pengguna
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Daftar Pengguna
    [Documentation]     SC07 - Data Pengguna
    [Tags]      TC02 - Search Data Daftar Pengguna
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pengguna
    home.Search    mellia@mail.com
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Export Data Daftar Pengguna
    [Documentation]     SC07 - Data Pengguna
    [Tags]      TC03 - Export Data Daftar Pengguna
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pengguna
    home.Export
    Sleep    7s
    Capture Page Screenshot
    [Teardown]    Close Browser
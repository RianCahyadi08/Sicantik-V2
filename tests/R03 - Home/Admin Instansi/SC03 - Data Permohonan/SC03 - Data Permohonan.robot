*** Settings ***
Documentation       SC03 - Data Permohonan
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/home.robot

*** Test Cases ***
TC01 - View Detail Data Daftar Status Permohonan
    [Documentation]     SC03 - Data Permohonan
    [Tags]      TC01 - View Detail Data Daftar Status Permohonan
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Permohonan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Daftar Status Permohonan
    [Documentation]     SC03 - Data Permohonan
    [Tags]      TC02 - Search Data Daftar Status Permohonan
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Permohonan
    home.Search    026/REKOMENDASI/TDI/XI/2023
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Export Data Daftar Status Permohonan
    [Documentation]     SC03 - Data Permohonan
    [Tags]      TC03 - Export Data Daftar Status Permohonan
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Permohonan
    home.Export Status Permohonan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
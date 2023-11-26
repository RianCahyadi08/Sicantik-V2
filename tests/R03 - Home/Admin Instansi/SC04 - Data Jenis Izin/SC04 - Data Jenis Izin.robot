*** Settings ***
Documentation       SC04 - Data Jenis Izin
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/home.robot

*** Test Cases ***
TC01 - View Detail Data Daftar Jenis Izin
    [Documentation]     SC04 - Data Jenis Izin
    [Tags]      TC01 - View Detail Data Daftar Jenis Izin
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Jenis Izin
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Daftar Jenis Izin
    [Documentation]     SC04 - Data Jenis Izin
    [Tags]      TC02 - Search Data Daftar Jenis Izin
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Jenis Izin
    home.Search    Jenis izin rian tte jamak
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Export Data Daftar Jenis Izin
    [Documentation]     SC04 - Data Jenis Izin
    [Tags]      TC03 - Export Data Daftar Jenis Izin
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Jenis Izin
    home.Export
    Sleep    1s
    Capture Page Screenshot
    [Teardown]    Close Browser
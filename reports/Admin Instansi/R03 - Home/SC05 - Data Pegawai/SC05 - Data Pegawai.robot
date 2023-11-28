*** Settings ***
Documentation       SC05 - Data Pegawai
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/home.robot

*** Test Cases ***
TC01 - View Detail Data Daftar Pegawai
    [Documentation]     SC05 - Data Pegawai
    [Tags]      TC01 - View Detail Data Daftar Pegawai
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pegawai
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Daftar Pegawai
    [Documentation]     SC05 - Data Pegawai
    [Tags]      TC02 - Search Data Daftar Pegawai
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pegawai
    home.Search    Rian Cahyadi
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Export Data Daftar Pegawai
    [Documentation]     SC05 - Data Pegawai
    [Tags]      TC03 - Export Data Daftar Pegawai
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pegawai
    home.Export
    Sleep    1s
    Capture Page Screenshot
    [Teardown]    Close Browser
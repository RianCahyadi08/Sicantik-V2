*** Settings ***
Documentation       SC01 - View Data Pegawai Instansi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/pengguna.robot

*** Test Cases ***
TC01 - View Data Pegawai Instansi
    [Documentation]     SC01 - View Data Pegawai Instansi
    [Tags]      TC01 - View Data Pegawai
    login.Open Browser Website
    login.Login Admin Instansi
    pengguna.Move To Pengguna
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Pegawai Instansi
    [Documentation]     SC01 - View Data Pegawai Instansi
    [Tags]      TC01 - Search Data Pegawai
    login.Open Browser Website
    login.Login Admin Instansi
    pengguna.Move To Pengguna
    pengguna.Search    Adm instansi
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Detail Data Pegawai Instansi
    [Documentation]     SC01 - View Data Pegawai Instansi
    [Tags]      TC01 - View Detail Data Pegawai Instansi
    login.Open Browser Website
    login.Login Admin Instansi
    pengguna.Move To Pengguna
    pengguna.Search    Adm instansi
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
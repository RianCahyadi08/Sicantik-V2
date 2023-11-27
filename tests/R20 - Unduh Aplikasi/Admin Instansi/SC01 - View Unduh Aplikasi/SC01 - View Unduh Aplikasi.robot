*** Settings ***
Documentation       SC01 - View Unduh Aplikasi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/unduh_aplikasi.robot

*** Test Cases ***
TC01 - View Daftar Aplikasi Mobile
    [Documentation]     SC01 - View Unduh Aplikasi
    [Tags]      TC01 - View Daftar Aplikasi Mobile
    login.Open Browser Website
    login.Login Admin Instansi
    unduh_aplikasi.Move To Unduh Aplikasi
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Daftar Aplikasi Mobile
    [Documentation]     SC01 - View Unduh Aplikasi
    [Tags]      TC02 - Search Data Daftar Aplikasi Mobile
    login.Open Browser Website
    login.Login Admin Instansi
    unduh_aplikasi.Move To Unduh Aplikasi
    unduh_aplikasi.Search    Pemohon mobile
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Detail Data Daftar Aplikasi Mobile
    [Documentation]     SC01 - View Unduh Aplikasi
    [Tags]      TC03 - View Detail Data Daftar Aplikasi Mobile
    login.Open Browser Website
    login.Login Admin Instansi
    unduh_aplikasi.Move To Unduh Aplikasi
    unduh_aplikasi.Detail
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
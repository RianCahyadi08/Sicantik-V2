*** Settings ***
Documentation       SC01 - View Page Jenis Izin (New Feature 2023)
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/jenis_izin.robot

*** Test Cases ***
TC01 - View Page Jenis Izin
    [Documentation]     SC01 - View Page Jenis Izin (New Feature 2023)
    [Tags]      TC01 - View Page Jenis Izin
    login.Open Browser Website
    login.Login Admin Instansi
    jenis_izin.Move To Jenis Izin
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Detail Data Jenis Izin
    [Documentation]     SC01 - View Page Jenis Izin (New Feature 2023)
    [Tags]      TC01 - View Detail Data Jenis Izin
    login.Open Browser Website
    login.Login Admin Instansi
    jenis_izin.Move To Jenis Izin
    jenis_izin.Detail Jenis Izin
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Filter Data Jenis Izin
    [Documentation]     SC01 - View Page Jenis Izin (New Feature 2023)
    [Tags]      TC03 - Filter Data Jenis Izin
    login.Open Browser Website
    login.Login Admin Instansi
    jenis_izin.Move To Jenis Izin
    jenis_izin.Click Btn Filter
    jenis_izin.Input Jenis Izin    Izin Praktik Anestesi-copy
    jenis_izin.Click Btn Tampilkan Hasil
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
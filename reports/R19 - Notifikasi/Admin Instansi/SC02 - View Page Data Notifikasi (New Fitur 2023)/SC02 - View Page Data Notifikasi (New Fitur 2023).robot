*** Settings ***
Documentation       SC02 - View Page Data Notifikasi (New Fitur 2023)
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/notifikasi.robot

*** Test Cases ***
TC01 - View Data Notifikasi
    [Documentation]     SC02 - View Page Data Notifikasi (New Fitur 2023)
    [Tags]      TC01 - View Data Notifikasi
    login.Open Browser Website
    login.Login Admin Instansi
    notifikasi.Click Icon Notification
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Page Setting Notifikasi
    [Documentation]     SC02 - View Page Data Notifikasi (New Fitur 2023)
    [Tags]      TC02 - View Page Setting Notifikasi
    login.Open Browser Website
    login.Login Admin Instansi
    notifikasi.Move To Notifikasi
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Filter Data Notifikasi (New Fitur 2023)
    [Documentation]     SC03 - Filter Data  Notifikasi (New Fitur 2023)
    [Tags]      TC03 - Filter Data  Notifikasi (New Fitur 2023)
    login.Open Browser Website
    login.Login Admin Instansi
    notifikasi.Move To Notifikasi
    notifikasi.Click Btn Filter
    notifikasi.Input Jenis Izin    IMB Restoran Demo 2
    notifikasi.Click Btn Tampilkan Hasil
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
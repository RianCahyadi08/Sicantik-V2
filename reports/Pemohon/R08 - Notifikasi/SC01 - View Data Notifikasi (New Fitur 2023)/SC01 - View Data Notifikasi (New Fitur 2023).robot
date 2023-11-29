*** Settings ***
Documentation       SC01 - View Data Notifikasi (New Fitur 2023)
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../..//libs/notifikasi.robot

*** Test Cases ***
TC01 - View Data Notifikasi Pengumuman
    [Documentation]     SC01 - View Data Notifikasi (New Fitur 2023)
    [Tags]      TC01 - View Data Notifikasi Pengumuman
    login.Open Browser Website
    login.Login Pemohon
    notifikasi.Click Icon Notification Pemohon
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Data Notifikasi Informasi
    [Documentation]     SC01 - View Data Notifikasi (New Fitur 2023)
    [Tags]      TC02 - View Data Notifikasi Informasi
    login.Open Browser Website
    login.Login Pemohon
    notifikasi.Click Icon Notification Pemohon
    notifikasi.Click Tab Informasi
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Data Notifikasi Informasi
    [Documentation]     SC01 - View Data Notifikasi (New Fitur 2023)
    [Tags]      TC03 - View All Data Notifikasi - Pengumuman
    login.Open Browser Website
    login.Login Pemohon
    notifikasi.Click Icon Notification Pemohon
    notifikasi.Click Lihat Semua Pengumuman Pemohon
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - View All Data Notifikasi - Informasi
    [Documentation]     SC01 - View Data Notifikasi (New Fitur 2023)
    [Tags]      TC04 - View All Data Notifikasi - Informasi
    login.Open Browser Website
    login.Login Pemohon
    notifikasi.Click Icon Notification Pemohon
    notifikasi.Click Tab Informasi
    notifikasi.Click Lihat Semua Informasi Pemohon
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC05 - View Data Notifikasi Permohonan Izin Ditolak (New Fitur 2023)
    [Documentation]     SC01 - View Data Notifikasi (New Fitur 2023)
    [Tags]      TC05 - View Data Notifikasi Permohonan Izin Ditolak (New Fitur 2023)
    login.Open Browser Website
    login.Login Pemohon
    notifikasi.Click Icon Notification Pemohon
    notifikasi.Click Tab Informasi
    notifikasi.Click Data Notification
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
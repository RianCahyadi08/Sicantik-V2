*** Settings ***
Documentation       SC01 - View Data Bell Notifikasi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/notifikasi.robot

*** Test Cases ***
TC01 - View Data Notifikasi Pengumuman
    [Documentation]     SC01 - View Data Bell Notifikasi
    [Tags]      TC01 - View Data Notifikasi Pengumuman
    login.Open Browser Website
    login.Login Admin Instansi
    notifikasi.Click Icon Notification
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Data Notifikasi Informasi
    [Documentation]     SC01 - View Data Bell Notifikasi
    [Tags]      TC02 - View Data Notifikasi Informasi
    login.Open Browser Website
    login.Login Admin Instansi
    notifikasi.Click Icon Notification
    notifikasi.Click Tab Informasi
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View All Data Notifikasi - Pengumuman
    [Documentation]     SC01 - View Data Bell Notifikasi
    [Tags]      TC03 - View All Data Notifikasi - Pengumuman
    login.Open Browser Website
    login.Login Admin Instansi
    notifikasi.Click Icon Notification
    notifikasi.Click Lihat Semua Pengumuman
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - View All Data Notifikasi - Pengumuman
    [Documentation]     SC01 - View Data Bell Notifikasi
    [Tags]      TC04 - View All Data Notifikasi - Pengumuman
    login.Open Browser Website
    login.Login Admin Instansi
    notifikasi.Click Icon Notification
    notifikasi.Click Tab Informasi
    notifikasi.Click Lihat Semua Informasi
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC05 - View Data Notifikasi TTE Jamak (Serial) - Jabatan 2
    [Documentation]     SC01 - View Data Bell Notifikasi
    [Tags]      TC05 - View Data Notifikasi TTE Jamak (Serial) - Jabatan 2
    login.Open Browser Website
    login.Login Admin Instansi
    notifikasi.Click Icon Notification
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
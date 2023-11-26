*** Settings ***
Documentation       SC02 - Pemohon
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/home.robot

*** Test Cases ***
TC01 - View Detail Data Tabel Pemohon (Jenis Pemohon)
    [Documentation]     SC02 - Pemohon
    [Tags]      TC01 - View Detail Data Tabel Pemohon (Jenis Pemohon)
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pemohon
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Filter Data Tabel Pemohon (Jenis Pemohon)
    [Documentation]     SC02 - Pemohon
    [Tags]      TC02 - Filter Data Tabel Pemohon (Jenis Pemohon)
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pemohon
    home.Filter Jenis Pemohon    Perorangan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Search Data Tabel Pemohon (Jenis Pemohon)
    [Documentation]     SC02 - Pemohon
    [Tags]      TC03 - Search Data Tabel Pemohon (Jenis Pemohon)
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pemohon
    home.Search    Rian Cahyadi
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - Export Data Jenis Pemohon (Jenis Pemohon)
    [Documentation]     SC02 - Pemohon
    [Tags]      TC04 - Export Data Jenis Pemohon (Jenis Pemohon)
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pemohon
    home.Export Jenis Pemohon
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC05 - View Detail Data Daftar Status Pemohon Aktif (Status Pemohon Aktif)
    [Documentation]     SC02 - Pemohon
    [Tags]      TC05 - View Detail Data Daftar Status Pemohon Aktif (Status Pemohon Aktif)
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pemohon
    home.Click Tab Status Pemohon Aktif
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC06 - Search Data Daftar Status Pemohon Aktif (Status Pemohon Aktif)
    [Documentation]     SC02 - Pemohon
    [Tags]      TC06 - Search Data Daftar Status Pemohon Aktif (Status Pemohon Aktif)
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pemohon
    home.Click Tab Status Pemohon Aktif
    home.Search Status Pemohon Aktif    Rian Cahyadi
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC07 - Export Data Daftar Status Pemohon Aktif (Status Pemohon Aktif)
    [Documentation]     SC02 - Pemohon
    [Tags]      TC07 - Export Data Daftar Status Pemohon Aktif (Status Pemohon Aktif)
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Pemohon
    home.Click Tab Status Pemohon Aktif
    home.Export Status Pemohon Aktif
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
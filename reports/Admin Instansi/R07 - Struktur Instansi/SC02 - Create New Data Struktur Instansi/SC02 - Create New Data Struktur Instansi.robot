*** Settings ***
Documentation       SC02 - Create New Data Struktur Instansi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/struktur_instansi.robot

*** Test Cases ***
TC01 - Create Data Struktur Instansi
    [Documentation]     SC02 - Create New Data Struktur Instansi
    [Tags]      TC01 - Create Data Struktur Instansi
    login.Open Browser Website
    login.Login Admin Instansi
    struktur_instansi.Move To Struktur Instansi
    struktur_instansi.Click Btn Tambah
    struktur_instansi.Input Nama Instansi       namaInstansiRianDatu
    struktur_instansi.Input Kode Instansi       KI002
    struktur_instansi.Select Kode Daerah        Jawa Barat
    struktur_instansi.Input WS Url              https://www.google.com/
    struktur_instansi.Select Induk Instansi     Demo2
    Capture Page Screenshot
    struktur_instansi.Click Btn Save
    Sleep    5s
    Capture Page Screenshot
    [Teardown]    Close Browser
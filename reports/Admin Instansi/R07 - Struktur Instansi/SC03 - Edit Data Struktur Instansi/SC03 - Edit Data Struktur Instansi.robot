*** Settings ***
Documentation       SC03 - Edit Data Struktur Instansi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/struktur_instansi.robot

*** Test Cases ***
TC01 - Edit Data Struktur Instansi
    [Documentation]     SC03 - Edit Data Struktur Instansi
    [Tags]      TC01 - Edit Data Struktur Instansi
    login.Open Browser Website
    login.Login Admin Instansi
    struktur_instansi.Move To Struktur Instansi
    struktur_instansi.Search    namaInstansiRian
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[1]/div/div[2]/div/div/div/div[2]/div[1]/div[2]/button[1]
    struktur_instansi.Input Nama Instansi       namaInstansiRianTiga
    struktur_instansi.Input Kode Instansi       KI003
    struktur_instansi.Input WS Url              https://www.facebook.com/
    Capture Page Screenshot
    struktur_instansi.Click Btn Save
    Sleep    5s
    Capture Page Screenshot
    [Teardown]    Close Browser
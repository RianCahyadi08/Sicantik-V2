*** Settings ***
Documentation       SC04 - Duplicate Data Jenis izin
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/jenis_izin.robot

*** Test Cases ***
TC01 - Duplicate Data Jenis Izin
    [Documentation]     SC04 - Duplicate Data Jenis izin
    [Tags]      TC01 - Duplicate Data Jenis Izin
    login.Open Browser Website
    login.Login Admin Instansi
    jenis_izin.Move To Jenis Izin
    jenis_izin.Click Btn Filter
    jenis_izin.Input Jenis Izin    IMB Restoran Demo 2
    jenis_izin.Click Btn Tampilkan Hasil
    jenis_izin.Duplicate
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
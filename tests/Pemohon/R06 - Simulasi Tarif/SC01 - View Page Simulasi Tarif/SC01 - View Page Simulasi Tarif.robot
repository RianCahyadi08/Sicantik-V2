*** Settings ***
Documentation       SC01 - View Page Simulasi Tarif
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../..//libs/simulasi_tarif.robot

*** Test Cases ***
TC01 - View Data Simulasi Tarif
    [Documentation]     SC01 - View Page Simulasi Tarif
    [Tags]      TC01 - View Data Simulasi Tarif
    login.Open Browser Website
    login.Login Pemohon
    simulasi_tarif.Move To Simulasi Tarif
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Hitung Tarif
    [Documentation]     SC01 - View Page Simulasi Tarif
    [Tags]      TC02 - Hitung Tarif
    login.Open Browser Website
    login.Login Pemohon
    simulasi_tarif.Move To Simulasi Tarif
    simulasi_tarif.Select Jenis Izin    001-Izin Tempat Penjualan Minuman
    simulasi_tarif.Select Jenis Retribusi    hotel
    simulasi_tarif.Input Jumlah Item    5
    simulasi_tarif.Click Btn Hitung Total
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
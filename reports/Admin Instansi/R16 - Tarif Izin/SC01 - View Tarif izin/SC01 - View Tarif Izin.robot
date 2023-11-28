*** Settings ***
Documentation       SC01 - View Tarif Izin
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/tarif_izin.robot

*** Test Cases ***
TC01 - View Tarif Izin
    [Documentation]     SC01 - View Tarif Izin
    [Tags]      TC01 - View Tarif Izin
    login.Open Browser Website
    login.Login Admin Instansi
    tarif_izin.Move To Tarif Izin
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Detail Tarif Izin
    [Documentation]     SC01 - View Tarif Izin
    [Tags]      TC01 - View Detail Tarif Izin
    login.Open Browser Website
    login.Login Admin Instansi
    tarif_izin.Move To Tarif Izin
    tarif_izin.Detail Tarif Izin
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
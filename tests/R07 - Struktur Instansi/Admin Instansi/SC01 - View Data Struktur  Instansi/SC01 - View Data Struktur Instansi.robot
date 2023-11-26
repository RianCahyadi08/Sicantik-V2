*** Settings ***
Documentation       SC01 - View Data Stuktur Instansi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/struktur_instansi.robot

*** Test Cases ***
TC01 - View Data Stuktur Instansi
    [Documentation]     SC01 - View Data Stuktur Instansi
    [Tags]      TC01 - View Data Stuktur Instansi
    login.Open Browser Website
    login.Login Admin Instansi
    struktur_instansi.Move To Struktur Instansi
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
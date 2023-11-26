*** Settings ***
Documentation       SC04 - View Detail Struktur Instansi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/struktur_instansi.robot

*** Test Cases ***
TC01 - View Detail Struktur Instansi
    [Documentation]     SC04 - View Detail Struktur Instansi
    [Tags]      TC01 - View Detail Struktur Instansi
    login.Open Browser Website
    login.Login Admin Instansi
    struktur_instansi.Move To Struktur Instansi
    struktur_instansi.Detail Struktur Instansi
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
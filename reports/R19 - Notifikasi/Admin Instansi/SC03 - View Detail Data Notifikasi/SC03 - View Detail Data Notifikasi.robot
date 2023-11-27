*** Settings ***
Documentation       SC03 - View Detail Data Notifikasi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/notifikasi.robot

*** Test Cases ***
TC01 - View Detail Data Notifikasi (ex. Pendaftaran)
    [Documentation]     SC03 - View Detail Data Notifikasi
    [Tags]      TC01 - View Detail Data Notifikasi (ex. Pendaftaran)
    login.Open Browser Website
    login.Login Admin Instansi
    notifikasi.Move To Notifikasi
    notifikasi.Detail Notifikasi
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
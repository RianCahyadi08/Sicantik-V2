*** Settings ***
Documentation       SC05 - View bagian Dokumen
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../..//libs/profile_permohonan_izin.robot

*** Test Cases ***
TC01 - View Dokumen
    [Documentation]     SC05 - View bagian Dokumen
    [Tags]      TC01 - View Dokumen
    login.Open Browser Website
    login.Login Pemohon
    profile_permohonan_izin.Move To Profile dan Permohonan Izin
    profile_permohonan_izin.Move To Profile dan Perusahaan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

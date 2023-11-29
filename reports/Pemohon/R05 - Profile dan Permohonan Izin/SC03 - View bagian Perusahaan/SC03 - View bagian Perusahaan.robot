*** Settings ***
Documentation       SC03 - View bagian Perusahaan
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../..//libs/profile_permohonan_izin.robot

*** Test Cases ***
TC01 - View Perusahaan
    [Documentation]     SC03 - View bagian Perusahaan
    [Tags]      TC01 - View Daftar Aduan
    login.Open Browser Website
    login.Login Pemohon
    profile_permohonan_izin.Move To Profile dan Permohonan Izin
    profile_permohonan_izin.Move To Profile dan Perusahaan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Detail Data Perusahaan
    [Documentation]     SC03 - View bagian Perusahaan
    [Tags]      TC02 - View Detail Data Perusahaan
    login.Open Browser Website
    login.Login Pemohon
    profile_permohonan_izin.Move To Profile dan Permohonan Izin
    profile_permohonan_izin.Move To Profile dan Perusahaan
    profile_permohonan_izin.Detail Perusahaan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
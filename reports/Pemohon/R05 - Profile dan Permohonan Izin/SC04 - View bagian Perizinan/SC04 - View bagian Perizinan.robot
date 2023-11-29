*** Settings ***
Documentation       SC04 - View bagian Perizinan
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../..//libs/profile_permohonan_izin.robot

*** Test Cases ***
TC01 - View Perizinan
    [Documentation]     SC04 - View bagian Perizinan
    [Tags]      TC01 - View Perizinan
    login.Open Browser Website
    login.Login Pemohon
    profile_permohonan_izin.Move To Profile dan Permohonan Izin
    profile_permohonan_izin.Move To Profile dan Perusahaan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Detail Data Perizinan
    [Documentation]     SC04 - View bagian Perizinan
    [Tags]      TC02 - View Detail Data Perizinan
    login.Open Browser Website
    login.Login Pemohon
    profile_permohonan_izin.Move To Profile dan Permohonan Izin
    profile_permohonan_izin.Move To Profile dan Perusahaan
    profile_permohonan_izin.Detail Perusahaan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
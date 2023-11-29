*** Settings ***
Documentation       SC01 - View Profile dan Permohonan by role User
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../..//libs/profile_permohonan_izin.robot

*** Test Cases ***
TC01 - View Profile dan Permohonan
    [Documentation]     SC01 - View Profile dan Permohonan by role User
    [Tags]      TC01 - View Daftar Aduan
    login.Open Browser Website
    login.Login Pemohon
    profile_permohonan_izin.Move To Profile dan Permohonan Izin
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
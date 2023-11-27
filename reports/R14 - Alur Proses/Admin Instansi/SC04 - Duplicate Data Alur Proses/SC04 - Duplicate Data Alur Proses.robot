*** Settings ***
Documentation       SC04 - Duplicate Data Alur Proses
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/alur_proses.robot

*** Test Cases ***
TC01 - Duplicate Data Alur Proses
    [Documentation]     SC04 - Duplicate Data Alur Proses
    [Tags]      TC01 - Duplicate Data Alur Proses
    login.Open Browser Website
    login.Login Admin Instansi
    alur_proses.Move To Alur Proses Module
    alur_proses.Click Btn Filter
    alur_proses.Input Alur Proses    Alur Izin Praktik Dokter - Kab (demo)
    alur_proses.Click Btn Tampilkan Hasil
    alur_proses.Duplicate Alur Proses
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
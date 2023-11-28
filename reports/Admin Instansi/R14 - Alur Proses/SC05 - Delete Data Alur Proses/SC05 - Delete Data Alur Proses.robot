*** Settings ***
Documentation       SC05 - Delete Data Alur Proses
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/alur_proses.robot

*** Test Cases ***
TC01 - Delete Data Alur Proses
    [Documentation]     SC05 - Delete Data Alur Proses
    [Tags]      TC01 - Delete Data Alur Proses
    login.Open Browser Website
    login.Login Admin Instansi
    alur_proses.Move To Alur Proses Module
    alur_proses.Click Btn Filter
    alur_proses.Input Alur Proses    Alur Izin Testtttt
    alur_proses.Click Btn Tampilkan Hasil
    alur_proses.Delete Alur Proses
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
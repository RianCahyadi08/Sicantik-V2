*** Settings ***
Documentation       SC02 - Update Kalender
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/kalender.robot

*** Test Cases ***
TC01 - Update Kalender
    [Documentation]     SC02 - Update Kalender
    [Tags]      TC01 - Update Kalender
    login.Open Browser Website
    login.Login Admin Instansi
    kalender.Move To Kalender
    kalender.Click Icon Edit
    kalender.Click Btn Tambah Data
    kalender.Select Hari    Sabtu
    kalender.Click Btn Simpan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
*** Settings ***
Documentation       SC01 - View Data Jabatan
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/master_jabatan.robot

*** Test Cases ***
TC01 - View Data Jabatan
    [Documentation]     SC01 - View Data Jabatan
    [Tags]      TC01 - View Data Jabatan
    login.Open Browser Website
    login.Login Admin Instansi
    master_jabatan.Move To Master Jabatan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
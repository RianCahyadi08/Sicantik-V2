*** Settings ***
Documentation       SC04 - Delete Data Jabatan
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/master_jabatan.robot

*** Test Cases ***
TC01 - Delete Data Jabatan
    [Documentation]     SC04 - Delete Data Jabatan
    [Tags]      TC01 - Delete Data Jabatan
    login.Open Browser Website
    login.Login Admin Instansi
    master_jabatan.Move To Master Jabatan
    master_jabatan.Search    Jabatan Rian Tiga
    master_jabatan.Delete
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
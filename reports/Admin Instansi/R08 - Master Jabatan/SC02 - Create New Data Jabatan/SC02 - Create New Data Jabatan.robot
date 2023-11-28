*** Settings ***
Documentation       SC02 - Create New Data Jabatan
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/master_jabatan.robot

*** Test Cases ***
TC01 - Create Data Jabatan
    [Documentation]     SC02 - Create New Data Jabatan
    [Tags]      TC01 - Create Data Jabatan
    login.Open Browser Website
    login.Login Admin Instansi
    master_jabatan.Move To Master Jabatan
    master_jabatan.Click Btn Buat Baru
    master_jabatan.Input Jabatan    Jabatan Rian Tiga
    master_jabatan.Input Keterangan    Lorem ipsum
    master_jabatan.Click Btn Save
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
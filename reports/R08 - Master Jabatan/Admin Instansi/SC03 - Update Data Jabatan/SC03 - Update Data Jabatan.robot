*** Settings ***
Documentation       SC03 - Update Data Jabatan
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/master_jabatan.robot

*** Test Cases ***
TC01 - Update Data Jabatan
    [Documentation]     SC03 - Update Data Jabatan
    [Tags]      TC01 - Update Data Jabatan
    login.Open Browser Website
    login.Login Admin Instansi
    master_jabatan.Move To Master Jabatan
    master_jabatan.Search    Jabatan Rian Tiga
    master_jabatan.Click Icon Edit
    master_jabatan.Input Jabatan    Jabatan Rian Tiga Update
    master_jabatan.Input Keterangan    Lorem ipsum update
    master_jabatan.Click Btn Save
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
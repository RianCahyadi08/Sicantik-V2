*** Settings ***
Documentation       SC02 - Create New Data Peran
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/peran.robot

*** Test Cases ***
TC01 - Create Data Peran
    [Documentation]     SC02 - Create New Data Peran
    [Tags]      TC01 - Create Data Peran
    login.Open Browser Website
    login.Login Admin Instansi
    peran.Move To Peran
    peran.Click Btn Tambah
    peran.Input Peran    peranRian
    peran.Input Path Home    homePathRian
    peran.Click Btn Save
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
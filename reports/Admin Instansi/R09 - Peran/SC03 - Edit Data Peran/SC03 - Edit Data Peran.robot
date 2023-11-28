*** Settings ***
Documentation       SC03 - Edit Data Peran
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/peran.robot

*** Test Cases ***
TC01 - Edit Data Peran
    [Documentation]     SC03 - Edit Data Peran
    [Tags]      TC01 - Edit Data Peran
    login.Open Browser Website
    login.Login Admin Instansi
    peran.Move To Peran
    peran.Search    peranRian
    peran.Click Icon Edit
    peran.Input Peran    peranRianUpdate
    peran.Input Path Home    homePathRianUpdate
    peran.Click Btn Save
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
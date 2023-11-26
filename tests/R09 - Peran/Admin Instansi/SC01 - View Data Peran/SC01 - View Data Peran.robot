*** Settings ***
Documentation       SC01 - View Data Peran
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/peran.robot

*** Test Cases ***
TC01 - View Data Peran
    [Documentation]     SC01 - View Data Peran
    [Tags]      TC01 - View Data Peran
    login.Open Browser Website
    login.Login Admin Instansi
    peran.Move To Peran
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
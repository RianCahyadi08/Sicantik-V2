*** Settings ***
Documentation       SC05 - Delete Data Peran
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/peran.robot

*** Test Cases ***
TC01 - Delete Data Peran
    [Documentation]     SC05 - Delete Data Peran
    [Tags]      TC01 - Delete Data Peran
    login.Open Browser Website
    login.Login Admin Instansi
    peran.Move To Peran
    peran.Search    rian
    peran.Delete
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
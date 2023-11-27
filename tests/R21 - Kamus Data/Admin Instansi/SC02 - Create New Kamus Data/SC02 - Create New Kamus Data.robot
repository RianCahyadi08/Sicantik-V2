*** Settings ***
Documentation       SC02 - Create New Kamus Data
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/kamus_data.robot

*** Test Cases ***
TC01 - Create New Kamus Data
    [Documentation]     SC02 - Create New Kamus Data
    [Tags]      TC01 - Create New Kamus Data
    login.Open Browser Website
    login.Login Admin Instansi
    kamus_data.Move To Kamus Data

    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
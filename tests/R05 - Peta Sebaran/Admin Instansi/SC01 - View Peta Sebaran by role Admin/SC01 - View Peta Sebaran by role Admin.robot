*** Settings ***
Documentation       SC01 - View Peta Sebaran by role Admin
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/peta_sebaran.robot

*** Test Cases ***
TC01 - View Peta Sebaran
    [Documentation]     SC01 - View Peta Sebaran by role Admin
    [Tags]      TC01 - View Peta Sebaran
    login.Open Browser Website
    login.Login Admin Instansi
    peta_sebaran.Move To Peta Sebaran
    Capture Page Screenshot
    [Teardown]    Close Browser
*** Settings ***
Documentation       SC01 - View Kalender
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/kalender.robot

*** Test Cases ***
TC01 - View Kalender
    [Documentation]     SC01 - View Kalender
    [Tags]      TC01 - View Kalender
    login.Open Browser Website
    login.Login Admin Instansi
    kalender.Move To Kalender
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Detail Kalender
    [Documentation]     SC01 - View Kalender
    [Tags]      TC02 - View Detail Kalender
    login.Open Browser Website
    login.Login Admin Instansi
    kalender.Move To Kalender
    kalender.Detail Kalender
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
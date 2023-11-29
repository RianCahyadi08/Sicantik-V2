*** Settings ***
Documentation       SC01 - View Home
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot

*** Test Cases ***
TC01 - View Home
    [Documentation]     SC01 - View Home
    [Tags]      TC01 - View Home
    login.Open Browser Website
    login.Login Pemohon
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
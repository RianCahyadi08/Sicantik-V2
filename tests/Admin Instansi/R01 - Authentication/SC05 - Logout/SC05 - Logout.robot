*** Settings ***
Documentation       SC05 - Logout
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot

*** Test Cases ***
TC01 - Log out rules
    [Documentation]     SC05 - Logout
    [Tags]      TC01 - Log out rules
    login.Open Browser Website
    login.Login Admin Instansi
    login.Logout
    Sleep    1s
    Capture Page Screenshot
    [Teardown]    Close Browser
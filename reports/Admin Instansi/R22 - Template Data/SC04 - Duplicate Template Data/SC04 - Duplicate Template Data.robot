*** Settings ***
Documentation       SC04 - Duplicate Template Data
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/template_data.robot

*** Test Cases ***
TC01 - Duplicate Template Data
    [Documentation]     SC04 - Duplicate Template Data
    [Tags]      TC01 - Duplicate Template Data
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Duplicate Template Data
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
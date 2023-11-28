*** Settings ***
Documentation       SC05 - Delete Template Data
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/template_data.robot

*** Test Cases ***
TC01 - Delete Template Data
    [Documentation]     SC05 - Delete Template Data
    [Tags]      TC01 - Duplicate Template Data
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Delete Template Data
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
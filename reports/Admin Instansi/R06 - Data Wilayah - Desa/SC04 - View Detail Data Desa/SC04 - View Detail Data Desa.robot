*** Settings ***
Documentation       SC04 - View Detail Data Desa
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/desa.robot

*** Test Cases ***
TC01 - View Detail Data Desa
    [Documentation]     SC04 - View Detail Data Desa
    [Tags]      TC01 - View Detail Data Desa
    login.Open Browser Website
    login.Login Admin Instansi
    desa.Move To Desa
    desa.Detail Desa
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
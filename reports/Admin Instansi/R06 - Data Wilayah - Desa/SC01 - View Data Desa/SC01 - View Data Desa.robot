*** Settings ***
Documentation       SC01 - View Data Desa
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/desa.robot

*** Test Cases ***
TC01 - View Data Desa
    [Documentation]     SC01 - View Data Desa
    [Tags]      TC01 - View Data Desa
    login.Open Browser Website
    login.Login Admin Instansi
    desa.Move To Desa
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
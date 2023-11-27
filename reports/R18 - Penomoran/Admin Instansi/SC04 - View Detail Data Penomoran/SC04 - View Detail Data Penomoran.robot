*** Settings ***
Documentation       SC01 - View Detail Data Penomoran
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/penomoran.robot

*** Test Cases ***
TC01 - View Detail Data Penomoran
    [Documentation]     SC01 - View Detail Data Penomoran
    [Tags]      TC01 - View Detail Data Penomoran
    login.Open Browser Website
    login.Login Admin Instansi
    penomoran.Move To Penomoran
    penomoran.Detail Penomoran
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
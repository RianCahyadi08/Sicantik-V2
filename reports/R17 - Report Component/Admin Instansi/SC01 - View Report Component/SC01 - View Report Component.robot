*** Settings ***
Documentation       SC01 - View Report Component
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/report_component.robot

*** Test Cases ***
TC01 - View Setting Report Component
    [Documentation]     SC01 - View Report Component
    [Tags]      TC01 - View Setting Report Component
    login.Open Browser Website
    login.Login Admin Instansi
    report_component.Move To Report Component
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Report Component
    [Documentation]     SC01 - View Report Component
    [Tags]      TC02 - Search Data Report Component
    login.Open Browser Website
    login.Login Admin Instansi
    report_component.Move To Report Component
    report_component.Search    Izin Usaha
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
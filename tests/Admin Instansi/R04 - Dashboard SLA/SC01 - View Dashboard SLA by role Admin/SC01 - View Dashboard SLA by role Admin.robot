*** Settings ***
Documentation       SC01 - View Dashboard SLA by role Admin
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource    ../../../../libs/dashboard_sla.robot

*** Test Cases ***
TC01 - View Dashboard SLA
    [Documentation]     SC01 - View Dashboard SLA by role admin
    [Tags]      TC01 - View Dashboard SLA
    login.Open Browser Website
    login.Login Admin Instansi
    dashboard_sla.Move To Dashboard SLA
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Filter Data Dashboard SLA
    [Documentation]     SC01 - View Dashboard SLA by role admin
    [Tags]      TC02 - Filter Data  Dashboard SLA
    login.Open Browser Website
    login.Login Admin Instansi
    dashboard_sla.Move To Dashboard SLA
    dashboard_sla.Input Tgl Mulai    01/01/2023
    dashboard_sla.Input Tgl Selesai    30/11/2023
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
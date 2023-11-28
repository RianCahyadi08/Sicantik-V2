*** Settings ***
Documentation       SC01 - View Page Template Data
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/template_data.robot

*** Test Cases ***
TC01 - View Page Template Data
    [Documentation]     SC01 - View Page Template Data
    [Tags]      TC01 - View Page Template Data
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Filter Data Template Data (New Fitur 2023)
    [Documentation]     SC01 - View Page Template Data
    [Tags]      TC02 - Filter Data Template Data (New Fitur 2023)
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input Nama Template Data Filter    pemohon uat day 1
    template_data.Click Button Tampilkan Hasil
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Detail Template Data
    [Documentation]     SC01 - View Page Template Data
    [Tags]      TC03 - View Detail Template Data
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Click Icon Eye
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
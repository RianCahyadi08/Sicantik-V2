*** Settings ***
Documentation       SC01 - View Page Kamus Data
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/kamus_data.robot

*** Test Cases ***
TC01 - View Data Kamus Data
    [Documentation]     SC01 - View Page Kamus Data
    [Tags]      TC01 - View Data Kamus Data
    login.Open Browser Website
    login.Login Admin Instansi
    kamus_data.Move To Kamus Data
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Kamus Data
    [Documentation]     SC01 - View Page Kamus Data
    [Tags]      TC02 - Search Data Kamus Data
    login.Open Browser Website
    login.Login Admin Instansi
    kamus_data.Move To Kamus Data
    kamus_data.Search    c_kamus_data_new77
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Detail Data Kamus Data
    [Documentation]     SC01 - View Page Kamus Data
    [Tags]      TC03 - View Detail Data Kamus Data
    login.Open Browser Website
    login.Login Admin Instansi
    kamus_data.Move To Kamus Data
    kamus_data.Detail
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
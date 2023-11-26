*** Settings ***
Documentation       SC06 - Data Instansi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/home.robot

*** Test Cases ***
TC01 - View Detail Data Daftar Instansi
    [Documentation]     SC06 - Data Instansi
    [Tags]      TC01 - View Detail Data Daftar Instansi
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Unit
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Daftar Instansi
    [Documentation]     SC06 - Data Instansi
    [Tags]      TC02 - Search Data Daftar Instansi
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Unit
    home.Search    Rian Cahyadi
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Export Data Daftar Instansi
    [Documentation]     SC06 - Data Instansi
    [Tags]      TC03 - Export Data Daftar Instansi
    login.Open Browser Website
    login.Login Admin Instansi
    home.Detail Total Unit
    home.Export
    Sleep    1s
    Capture Page Screenshot
    [Teardown]    Close Browser
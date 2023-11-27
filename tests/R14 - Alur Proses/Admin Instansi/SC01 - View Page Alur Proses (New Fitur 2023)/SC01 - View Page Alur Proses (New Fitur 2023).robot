*** Settings ***
Documentation       SC01 - View Page Alur Proses (New Fitur 2023)
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/alur_proses.robot

*** Test Cases ***
TC01 - View Page Alur Proses
    [Documentation]     SC01 - View Page Alur Proses (New Fitur 2023)
    [Tags]      TC01 - View Page Alur Proses
    login.Open Browser Website
    login.Login Admin Instansi
    alur_proses.Move To Alur Proses Module
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Detail Data Alur Proses
    [Documentation]     SC01 - View Page Alur Proses (New Fitur 2023)
    [Tags]      TC01 - View Detail Data Alur Proses
    login.Open Browser Website
    login.Login Admin Instansi
    alur_proses.Move To Alur Proses Module
    alur_proses.Detail Alur Proses
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Filter Data Alur Proses (New Fitur 2023)
    [Documentation]     SC01 - View Page Alur Proses (New Fitur 2023)
    [Tags]      TC03 - Filter Data Alur Proses (New Fitur 2023)
    login.Open Browser Website
    login.Login Admin Instansi
    alur_proses.Move To Alur Proses Module
    alur_proses.Click Btn Filter
    alur_proses.Input Alur Proses    alur proses IMB - demo 1
    alur_proses.Click Btn Tampilkan Hasil
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
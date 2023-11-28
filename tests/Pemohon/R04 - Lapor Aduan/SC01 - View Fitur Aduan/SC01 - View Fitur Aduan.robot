*** Settings ***
Documentation       SC01 - View Fitur Aduan
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../..//libs/lapor_aduan.robot

*** Test Cases ***
TC01 - View Daftar Aduan
    [Documentation]     SC01 - View Fitur Aduan
    [Tags]      TC01 - View Daftar Aduan
    login.Open Browser Website
    login.Login Pemohon
    lapor_aduan.Move To Lapor Aduan Pemohon
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Daftar Aduan
    [Documentation]     SC01 - View Fitur Aduan
    [Tags]      TC01 - Search Daftar Aduan
    login.Open Browser Website
    login.Login Pemohon
    lapor_aduan.Move To Lapor Aduan Pemohon
    lapor_aduan.Search    search
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
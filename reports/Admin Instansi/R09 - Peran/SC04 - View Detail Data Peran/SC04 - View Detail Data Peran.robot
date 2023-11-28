*** Settings ***
Documentation       SC04 - View Detail Data Peran
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/peran.robot

*** Test Cases ***
TC01 - View Detail Data Peran
    [Documentation]     SC04 - View Detail Data Peran
    [Tags]      TC01 - View Detail Data Peran
    login.Open Browser Website
    login.Login Admin Instansi
    peran.Move To Peran
    peran.Click Icon Detail
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
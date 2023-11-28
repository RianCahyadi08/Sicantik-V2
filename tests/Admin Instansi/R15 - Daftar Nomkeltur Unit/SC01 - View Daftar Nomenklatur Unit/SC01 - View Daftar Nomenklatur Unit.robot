*** Settings ***
Documentation       SC01 - View Nomenklatur Unit
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/daftar_nomenklatur_unit.robot

*** Test Cases ***
TC01 - View Nomenklatur Unit
    [Documentation]     SC01 - View Nomenklatur Unit
    [Tags]      TC01 - View Nomenklatur Unit
    login.Open Browser Website
    login.Login Admin Instansi
    daftar_nomenklatur_unit.Move To Nomenklatur
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
*** Settings ***
Documentation       SC02 - Update Nomenklatur Unit
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/daftar_nomenklatur_unit.robot

*** Test Cases ***
TC01 - Update Nomenklatur Unit
    [Documentation]     SC02 - Update Nomenklatur Unit
    [Tags]      TC01 - Update Nomenklatur Unit
    login.Open Browser Website
    login.Login Admin Instansi
    daftar_nomenklatur_unit.Move To Nomenklatur
    daftar_nomenklatur_unit.Click Btn Edit
    daftar_nomenklatur_unit.Click Btn Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
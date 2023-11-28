*** Settings ***
Documentation       SC02 - Create New Data Desa
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/desa.robot

*** Test Cases ***
TC01 - Create New Data Desa
    [Documentation]     SC02 - Create New Data Desa
    [Tags]      TC01 - Create New Data Desa
    login.Open Browser Website
    login.Login Admin Instansi
    desa.Move To Desa
    desa.Click Btn Tambah Data
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
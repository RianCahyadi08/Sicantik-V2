*** Settings ***
Documentation       SC04 - Delete Data Pegawai Instansi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/pegawai_instansi.robot

*** Test Cases ***
TC01 - Delete Data Pegawai Instansi
    [Documentation]     SC04 - Delete Data Pegawai Instansi
    [Tags]      TC01 - Delete Data Pegawai
    login.Open Browser Website
    login.Login Admin Instansi
    pegawai_instansi.Move To Pegawai Instansi
    pegawai_instansi.Search    Rian Cahyadi Satu
    pegawai_instansi.Delete
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
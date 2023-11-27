*** Settings ***
Documentation       SC03 - Ubah Data Penomoran (New Fitur 2023).robot
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/penomoran.robot

*** Test Cases ***
TC01 - Ubah Data Penomoran (New Fitur 2023)
    [Documentation]     SC03 - Ubah Data Penomoran (New Fitur 2023).robot
    [Tags]      TC01 - Ubah Data Penomoran (New Fitur 2023)
    login.Open Browser Website
    login.Login Admin Instansi
    penomoran.Move To Penomoran
    penomoran.Search    Lorem ipsum
    penomoran.Click Icon Edit
    penomoran.Input Deskripsi Penomoran    Lorem ipsum update
    penomoran.Input Format Penomoran    Format update
    penomoran.Click Btn Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
*** Settings ***
Documentation       SC02 - Create New Data Penomoran (New Fitur 2023)
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/penomoran.robot

*** Test Cases ***
TC01 - Create Data Penomoran
    [Documentation]     SC02 - Create New Data Penomoran (New Fitur 2023)
    [Tags]      TC01 - Create Data Penomoran
    login.Open Browser Website
    login.Login Admin Instansi
    penomoran.Move To Penomoran
    penomoran.Click Btn Tambah Data
    penomoran.Input Deskripsi Penomoran    Lorem ipsum
    penomoran.Input Format Penomoran    Format
    penomoran.Select Cari Instansi    Demo2
    penomoran.Swith On Reset Penomoran
    penomoran.Click Btn Kategori Item
    penomoran.Select Unit Kerja    Percobaan
    penomoran.Input No Terakhir    1
    penomoran.Click Btn Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
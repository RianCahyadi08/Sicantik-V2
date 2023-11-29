*** Settings ***
Documentation       SC02 - Create New Data Aduan
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../..//libs/lapor_aduan.robot

*** Test Cases ***
TC01 - Create New Data Aduan
    [Documentation]     SC02 - Create New Data Aduan
    [Tags]      TC01 - Create New Data Aduan
    login.Open Browser Website
    login.Login Pemohon
    lapor_aduan.Move To Lapor Aduan Pemohon
    lapor_aduan.Click Btn Tambah Aduan
    lapor_aduan.Input Aduan    aduanRianSatu
    lapor_aduan.Select Kategori Kendala    Teknis
    lapor_aduan.Select Instansi    Demo2
    lapor_aduan.Upload Lampiran    C:\\Users\\Rian C\\PycharmProjects\\Sicantik-V2\\assets\\cat.jpg
    lapor_aduan.Input Keterangan    Lorem ipsum
    lapor_aduan.Input Kendala Teknis    Lorem ipsum
    lapor_aduan.Click Btn Submit Aduan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
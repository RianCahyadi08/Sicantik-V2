*** Settings ***
Documentation       SC02 - Create New Data Pengguna
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/pengguna.robot

*** Test Cases ***
TC01 - Create Data Pengguna
    [Documentation]     SC02 - Create New Data Pengguna
    [Tags]      TC01 - Create Data Pengguna
    login.Open Browser Website
    login.Login Admin Instansi
    pengguna.Move To Pengguna
    pengguna.Click Btn Tambah
    pengguna.Input Username         riancahyadi01
    pengguna.Input Email            rian.cahyadi01@yopmail.com
    pengguna.Input Kata Sandi       P@55word
    pengguna.Input Konfirmasi Kata Sandi    P@55word
    pengguna.Select Peran    FO3
    pengguna.Select Pegawai    Rian Cahyadi
    pengguna.Click Btn Selanjutnya
    pengguna.Click Btn Selanjutnya
    pengguna.Click Btn Selanjutnya
    pengguna.Click Btn Simpan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
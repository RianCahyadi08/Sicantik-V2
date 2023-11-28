*** Settings ***
Documentation       SC03 - Edit Data Pengguna
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/pengguna.robot

*** Test Cases ***
TC01 - Edit Data Pengguna
    [Documentation]     SC03 - Edit Data Pengguna
    [Tags]      TC01 - Edit Data Pengguna
    login.Open Browser Website
    login.Login Admin Instansi
    pengguna.Move To Pengguna
    pengguna.Search    rian
    pengguna.Click Icon Edit
    pengguna.Input Username         riancahyadi02
    pengguna.Input Email            rian.cahyadi02@yopmail.com
#    pengguna.Input Kata Sandi       P@55word
#    pengguna.Input Konfirmasi Kata Sandi    P@55word
#    pengguna.Select Peran    FO3
#    pengguna.Select Pegawai    Rian Cahyadi
    pengguna.Click Btn Selanjutnya
    pengguna.Click Btn Selanjutnya
    pengguna.Click Btn Selanjutnya
    pengguna.Click Btn Simpan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
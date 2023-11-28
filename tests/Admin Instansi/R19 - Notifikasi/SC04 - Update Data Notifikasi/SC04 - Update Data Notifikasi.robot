*** Settings ***
Documentation       SC04 - Update Data Notifikasi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/notifikasi.robot

*** Test Cases ***
TC01 - Update Data Notifikasi (ex. Pendaftaran)
    [Documentation]     SC04 - Update Data Notifikasi
    [Tags]      TC01 - Update Data Notifikasi (ex. Pendaftaran)
    login.Open Browser Website
    login.Login Admin Instansi
    notifikasi.Move To Notifikasi
    notifikasi.Click Btn Filter
    notifikasi.Input Jenis Izin    namaJenisIzinRianUpdate
    notifikasi.Click Btn Tampilkan Hasil
    notifikasi.Click Icon Edit
    notifikasi.Select Tipe    SMS
    notifikasi.Select Penerima    Pemohon
    notifikasi.Click Btn Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
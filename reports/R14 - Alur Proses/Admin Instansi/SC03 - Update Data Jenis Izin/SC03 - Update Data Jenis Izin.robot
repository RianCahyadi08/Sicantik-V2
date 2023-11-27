*** Settings ***
Documentation       SC03 - Update Data Jenis Izin
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/alur_proses.robot

*** Test Cases ***
TC01 - Update Data Jenis Izin
    [Documentation]     SC03 - Update Data Jenis Izin
    [Tags]      TC01 - Update Data Jenis Izin
    login.Open Browser Website
    login.Login Admin Instansi
    alur_proses.Move To Alur Proses Module
    alur_proses.Click Btn Filter
    alur_proses.Input Alur Proses    namaAlurProsesUpdate
    alur_proses.Click Btn Tampilkan Hasil
    alur_proses.Click Icon Edit
    alur_proses.Input Nama Alur Proses    namaAlurProsesSatuUpdate
    alur_proses.Click Btn Simpan Data
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
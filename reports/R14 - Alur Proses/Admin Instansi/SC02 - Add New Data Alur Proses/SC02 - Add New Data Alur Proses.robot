*** Settings ***
Documentation       SC02 - Add New Data Alur Proses
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/alur_proses.robot

*** Test Cases ***
TC01 - Add New Data Alur Proses
    [Documentation]     SC02 - Add New Data Alur Proses
    [Tags]      TC01 - Add New Data Alur Proses
    login.Open Browser Website
    login.Login Admin Instansi
    alur_proses.Move To Alur Proses Module
    alur_proses.Click Btn Tambah Data
    alur_proses.Input Nama Alur Proses    namaAlurProsesRianSatu
    alur_proses.Click Btn Tambah Tahapan Proses
    alur_proses.Input No Alur Proses    1
    alur_proses.Select Jenis Proses    Menerima & Memeriksa Berkas
    alur_proses.Click Btn Simpan Data
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Add New Data Alur Proses - Jenis Proses (Tanda Terima Berkas - TTE) (New Fitur 2023)
    [Documentation]     SC02 - Add New Data Alur Proses
    [Tags]      TC02 - Add New Data Alur Proses - Jenis Proses (Tanda Terima Berkas - TTE) (New Fitur 2023)
    login.Open Browser Website
    login.Login Admin Instansi
    alur_proses.Move To Alur Proses Module
    alur_proses.Click Btn Tambah Data
    alur_proses.Input Nama Alur Proses    namaAlurProsesRianDua
    alur_proses.Click Btn Tambah Tahapan Proses
    alur_proses.Input No Alur Proses    1
    alur_proses.Select Jenis Proses    Tanda Terima Berkas - TTE
    alur_proses.Select Report    Report
    alur_proses.Select Jenis TTD    Tanda Tangan Jamak
    alur_proses.Select Jabatan Satu    Jabatan Rian Satu
    alur_proses.Select Jabatan Dua    Jabatan Rian Dua
    alur_proses.Click Btn Simpan Data
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
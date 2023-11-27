*** Settings ***
Documentation       SC02 - Add New Data Jenis izin
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/jenis_izin.robot

*** Test Cases ***
TC01 - Add New Data Jenis Izin
    [Documentation]     SC02 - Add New Data Jenis izin
    [Tags]      TC01 - Add New Data Jenis Izin
    login.Open Browser Website
    login.Login Admin Instansi
    jenis_izin.Move To Jenis Izin
    jenis_izin.Click Btn Tambah Data
    jenis_izin.Input Nama Jenis Izin    namaJenisIzinRian
    jenis_izin.Input Kode OSS    KOSS01
    jenis_izin.Input Deskripsi Izin    Lorem ipsum
    jenis_izin.Select Jenis Dokumen    Fotocopy Status Kepemilikan Usaha
    jenis_izin.Click Btn Selanjutnya
    jenis_izin.Click Btn Tambah Jenis Pengajuan
    jenis_izin.Select Jenis Pengajuan    Baru
    jenis_izin.Select Alur Proses    alur proses rian
    jenis_izin.Select Format Nomor    nnn
    jenis_izin.Select Satuan Masa Berlaku    Tidak
    jenis_izin.Click Btn Selanjutnya
    jenis_izin.Click Btn Selanjutnya
    jenis_izin.Click Btn Simpan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
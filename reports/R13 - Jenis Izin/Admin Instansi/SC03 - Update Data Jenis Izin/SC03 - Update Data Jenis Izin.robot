*** Settings ***
Documentation       SC03 - Update Data Jenis Izin
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/jenis_izin.robot

*** Test Cases ***
TC01 - Update Data Jenis Izin
    [Documentation]     SC03 - Update Data Jenis Izin
    [Tags]      TC01 - Update Data Jenis Izin
    login.Open Browser Website
    login.Login Admin Instansi
    jenis_izin.Move To Jenis Izin
    jenis_izin.Click Btn Filter
    jenis_izin.Input Jenis Izin    namaJenisIzinRian
    jenis_izin.Click Btn Tampilkan Hasil
    jenis_izin.Click Icon Edit
    jenis_izin.Input Nama Jenis Izin    namaJenisIzinRianUpdate
    jenis_izin.Input Kode OSS    KOSS02
    jenis_izin.Input Deskripsi Izin    Lorem ipsum Update
#    jenis_izin.Select Jenis Dokumen    Fotocopy Status Kepemilikan Usaha
    jenis_izin.Click Btn Selanjutnya
#    jenis_izin.Click Btn Tambah Jenis Pengajuan
#    jenis_izin.Select Jenis Pengajuan    Baru
#    jenis_izin.Select Alur Proses    alur proses rian
#    jenis_izin.Select Format Nomor    nnn
#    jenis_izin.Select Satuan Masa Berlaku    Tidak
    jenis_izin.Click Btn Selanjutnya
    jenis_izin.Click Btn Selanjutnya
    jenis_izin.Click Btn Simpan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
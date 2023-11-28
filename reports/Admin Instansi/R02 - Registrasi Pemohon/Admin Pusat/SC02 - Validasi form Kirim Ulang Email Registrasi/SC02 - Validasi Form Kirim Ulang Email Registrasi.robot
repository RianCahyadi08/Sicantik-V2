*** Settings ***
Documentation       SC02 - Validasi form Kirim Ulang Email Registrasi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/registrasi_pemohon.robot

*** Test Cases ***
TC01 - Validasi email yang sudah terdaftar tetapi belum mendapatkan notif email verifikasi
    [Documentation]     SC02 - Validasi Form Kirim Ulang Email Registrasi
    [Tags]      TC01 - Validasi email yang sudah terdaftar tetapi belum mendapatkan notif email verifikasi
    login.Open Browser Website
    login.Kirim Ulang Email Konfirmasi    ryancahyadi11@gmail.com
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
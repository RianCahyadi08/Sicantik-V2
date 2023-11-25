*** Settings ***
Documentation       SC01 - Validasi Field Registrasi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/registrasi_pemohon.robot

*** Test Cases ***
TC01 - Login dengan username yang valid
    [Documentation]     SC01 - Validasi Username dan Password
    [Tags]      TC01 - Login dengan username yang valid
    login.Open Browser Website
#   step 1
    login.Registrasi
    login.Input Username Registrasi    cahyadirian
    login.Input Nama Lengkap    Rian Cahyadi
    login.Input Email    ryancahyadi11@gmail.com
    login.Select Instansi Tujuan    demo2
    login.Click Btn Selanjutnya
#   step 2
    login.Select Tipe Identitas     KTP
    login.Select Jenis Kelamin
    login.Input Tempat Lahir        Bandung
    login.Input Npwp                3212702130399001
    login.Input No Identitas        3212702130399002
    login.Input Pekerjaan           Karyawan Swasta
    login.Input Tgl Lahir           2023/11/25
    login.Upload KTP                C:\\Users\\ReiKa\\PycharmProjects\\Sicantik\\assets\\sw.pdf
    login.Click Btn Selanjutnya
#   step 3
    login.Input No Telp             087794875831
    login.Input No Hp               087794875832
    login.Select Provinsi           Jawa Barat
    login.Select Kota               Kota Bandung
    login.Select Kecamatan          Kiaracondong
    login.Select Desa               Babakansari
    login.Input Kodepos             40283
    login.Input Alamat Step 3       Jl. Babakansari
    login.Click Btn Selanjutnya
    Capture Page Screenshot
    login.Click Btn Save
#   step 4
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Approve data setelah Pemohon melakukan registrasi
    [Documentation]     SC01 - Validasi Field Registrasi
    [Tags]      TC02 - Approve data setelah Pemohon melakukan registrasi
    login.Open Browser Website
    login.Login Admin Pusat
    registrasi_pemohon.Move To Registrasi Pemohon
    registrasi_pemohon.Click Btn Filter
    registrasi_pemohon.Input No Identitas   3212702130399002
    registrasi_pemohon.Click Btn Tampilkan Hasil
    registrasi_pemohon.Approve Registrasi Pemohon
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
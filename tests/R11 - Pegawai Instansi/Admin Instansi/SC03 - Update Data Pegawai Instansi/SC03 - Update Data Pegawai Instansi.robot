*** Settings ***
Documentation       SC02 - Create New Data Pegawai Instansi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/pegawai_instansi.robot

*** Test Cases ***
TC01 - Update Data Pegawai Instansi
    [Documentation]     SC03 - Update Data Pegawai Instansi
    [Tags]      TC01 - Update Data Pegawai Instansi
    login.Open Browser Website
    login.Login Admin Instansi
    pegawai_instansi.Move To Pegawai Instansi
    pegawai_instansi.Search    Rian Cahyadi Satu
    pegawai_instansi.Click Btn Edit
#    pegawai_instansi.Upload Photo       C:\\Users\\ReiKa\\PycharmProjects\\Sicantik\\assets\\cat.jpg
    pegawai_instansi.Input NIK          1234567890123457
    pegawai_instansi.Input No Induk Pegawai     1234567890123457
    pegawai_instansi.Input Nama Pegawai         Rian Cahyadi Satu Update
    pegawai_instansi.Input Email                rian.cahyadi02@yopmail.com
    pegawai_instansi.Input No Hp                087794875832
#    pegawai_instansi.Select Instansi            Demo2
#    pegawai_instansi.Select Unit                Dinas Pertanaman
#    pegawai_instansi.Select Jabatan             Front Office Demo
    pegawai_instansi.Input Posisi               Programmer
    pegawai_instansi.Click Btn Simpan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
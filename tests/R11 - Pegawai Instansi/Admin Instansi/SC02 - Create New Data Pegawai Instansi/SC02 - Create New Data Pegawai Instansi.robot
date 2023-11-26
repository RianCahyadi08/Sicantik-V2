*** Settings ***
Documentation       SC02 - Create New Data Pegawai Instansi
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/pegawai_instansi.robot

*** Test Cases ***
TC01 - Create Data Pegawai Instansi
    [Documentation]     SC02 - Create New Data Pegawai Instansi
    [Tags]      TC01 - Create Data Pegawai Instansi
    login.Open Browser Website
    login.Login Admin Instansi
    pegawai_instansi.Move To Pegawai Instansi
    pegawai_instansi.Click Btn Add
    pegawai_instansi.Upload Photo       C:\\Users\\ReiKa\\PycharmProjects\\Sicantik\\assets\\cat.jpg
    pegawai_instansi.Input NIK          1234567890123456
    pegawai_instansi.Input No Induk Pegawai     1234567890123456
    pegawai_instansi.Input Nama Pegawai         Rian Cahyadi Satu
    pegawai_instansi.Input Email                rian.cahyadi01@yopmail.com
    pegawai_instansi.Input No Hp                087794875831
    pegawai_instansi.Select Instansi            Demo2
    pegawai_instansi.Select Unit                Dinas Pertanaman
    pegawai_instansi.Select Jabatan             Front Office Demo
    pegawai_instansi.Input Posisi               SQA
    pegawai_instansi.Click Btn Simpan
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
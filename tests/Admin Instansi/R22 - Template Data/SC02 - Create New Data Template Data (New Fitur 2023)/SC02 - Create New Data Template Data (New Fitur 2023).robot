*** Settings ***
Documentation       SC02 - Create New Data Template Data (New Fitur 2023)
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/template_data.robot

*** Test Cases ***
TC01 - Create New Data Template Data dengan Tipe Keluaran Combogrid Webservice
    [Documentation]     SC02 - Create New Data Template Data (New Fitur 2023)
    [Tags]      TC01 - Create New Data Template Data dengan Tipe Keluaran Combogrid Webservice
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Move To Add Template Data
    template_data.Input Nama Template Data    namaTemplateDataComboGrid
    template_data.Select Tipe Keluaran    combogrid
    template_data.Click Button Tambah Kelompok Data
    template_data.Input Label Kelompok    labelKelompokComboGrid
    template_data.Select Tipe    Plural
    template_data.Select Jenis Sumber    SQL
    template_data.Input Query    SELECT * FROM a
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id    1
    template_data.Input Custom Variable    $var1=100&$var2=200
    Press Keys      None    ESC
    template_data.Input CG Value    cgValue
    template_data.Input CG Label    labelCG
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Create New Data Template Data dengan Tipe Keluaran Dokumen Cetak (New FItur 2023)
    [Documentation]     SC02 - Create New Data Template Data (New Fitur 2023)
    [Tags]      TC02 - Create New Data Template Data dengan Tipe Keluaran Dokumen Cetak (New FItur 2023)
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Move To Add Template Data
    template_data.Input Nama Template Data    namaTemplateDataDokumenCetak
    template_data.Select Tipe Keluaran    dokumen
    template_data.Switch Output PDF
    template_data.Switch Dapat Download Pemohon
    template_data.Upload Template    C:\\Users\\asus rog\\PycharmProjects\\Sicantik-V2\\assets\\doc.docx
    template_data.Click Button Tambah Kelompok Data
    template_data.Input Label Kelompok    labelKelompokDokumenCetak
    template_data.Select Tipe    Plural
    template_data.Select Jenis Sumber    SQL
    template_data.Input Query    SELECT * FROM a
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id    1
    template_data.Input Custom Variable    $var1=100&$var2=200
    Press Keys      None    ESC
    Sleep    3s
    Click Element    id:kt_scrolltop
#    template_data.Input CG Value    cgValue
#    template_data.Input CG Label    labelCG
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Create New Data Template Data dengan Tipe Keluaran JSON
    [Documentation]     SC02 - Create New Data Template Data (New Fitur 2023)
    [Tags]      TC03 - Create New Data Template Data dengan Tipe Keluaran JSON
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Move To Add Template Data
    template_data.Input Nama Template Data    namaTemplateDataJson
    template_data.Select Tipe Keluaran    Json
    template_data.Click Button Tambah Kelompok Data
    template_data.Input Label Kelompok    labelKelompokJson
    template_data.Select Tipe    Plural
    template_data.Select Jenis Sumber    SQL
    template_data.Input Query    SELECT * FROM a
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id    1
    template_data.Input Custom Variable    $var1=100&$var2=200
    Press Keys      None    ESC
#    template_data.Input CG Value    cgValue
#    template_data.Input CG Label    labelCG
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - Create New Data Template Data dengan Tipe Keluaran XML
    [Documentation]     SC02 - Create New Data Template Data (New Fitur 2023)
    [Tags]      TC04 - Create New Data Template Data dengan Tipe Keluaran XML
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Move To Add Template Data
    template_data.Input Nama Template Data    namaTemplateDataXML
    template_data.Select Tipe Keluaran    XML
    template_data.Click Button Tambah Kelompok Data
    template_data.Input Label Kelompok    labelKelompokXML
    template_data.Select Tipe    Plural
    template_data.Select Jenis Sumber    SQL
    template_data.Input Query    SELECT * FROM a
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id    1
    template_data.Input Custom Variable    $var1=100&$var2=200
    Press Keys      None    ESC
#    template_data.Input CG Value    cgValue
#    template_data.Input CG Label    labelCG
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
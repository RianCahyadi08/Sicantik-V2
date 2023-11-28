*** Settings ***
Documentation       SC03 - Update Template Data
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/template_data.robot

*** Test Cases ***
TC01 - Update Template Data dengan Tipe Keluaran Combogrid Webservice
    [Documentation]     SC02 - Create New Data Template Data (New Fitur 2023)
    [Tags]      TC01 - Update Template Data dengan Tipe Keluaran Combogrid Webservice
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input Nama Template Data Filter    namaTemplateDataComboGrid
    template_data.Click Button Tampilkan Hasil
    template_data.Click Icon Pencil
    template_data.Input Nama Template Data    namaTemplateDataComboGridUpdate
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Update Template Data dengan Tipe Keluaran Dokumen Cetak
    [Documentation]     SC03 - Update Template Data
    [Tags]      TC02 - Update Template Data dengan Tipe Keluaran Dokumen Cetak
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input Nama Template Data Filter    namaTemplateDataDokumenCetak
    template_data.Click Button Tampilkan Hasil
    template_data.Click Icon Pencil
    template_data.Input Nama Template Data    namaTemplateDataDokumenCetakUpdate
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Update Template Data dengan Tipe Keluaran JSON
    [Documentation]     SC03 - Update Template Data
    [Tags]      TC03 - Update Template Data dengan Tipe Keluaran JSON
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input Nama Template Data Filter    namaTemplateDataJson
    template_data.Click Button Tampilkan Hasil
    template_data.Click Icon Pencil
    template_data.Input Nama Template Data    namaTemplateDataJsonUpdate
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - Update Template Data dengan Tipe Keluaran XML
    [Documentation]     SC03 - Update Template Data
    [Tags]      TC04 - Update Template Data dengan Tipe Keluaran XML
    login.Open Browser Website
    login.Login Admin Instansi
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input Nama Template Data Filter    namaTemplateDataXML
    template_data.Click Button Tampilkan Hasil
    template_data.Click Icon Pencil
    template_data.Input Nama Template Data    namaTemplateDataXMLUpdate
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
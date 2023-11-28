*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/template_form.robot
*** Test Cases ***
TC01 - Create New Template Form (Tipe Form) dengan Tidak Otomatis Update
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC01 - Create New Template Form (Tipe Form) dengan Tidak Otomatis Update
    login.Open Browser Website
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Click Button Add
    # buat canvas
    template_form.Click Button Buat Canvas
    template_form.Input Tab Index Canvas    1
    template_form.Select Tipe Form Canvas
    template_form.Input Nama Canvas    Nama canvas
    template_form.Input Web Service Awal Canvas  webServiceAwal
    template_form.Select Data Table Canvas
    template_form.Input No Urut Canvas    1
    template_form.Click Button Simpan Canvas
    # end buat canvas
    # buat tab
    template_form.Click Button Buat Tab
    template_form.Input Label Buat Tab  label
    template_form.Click Button Simpan Buat Tab
    # ebd buat tab
    # buat tombol
    template_form.Click Button Buat Tombol
    template_form.Select Jenis Aksi Buat
    template_form.Input Link Buat Tombol  https://www.google.com/
    template_form.Input Label Buat Tombol  label
    template_form.Click Button Simpan Buat Tombol
    # end
    template_form.Input Nama Form    Form Rian I
    template_form.Input Field Kunci    Field Kunci
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Create New Template Form (Tipe Form) dengan Otomatis Update
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC02 - Create New Template Form (Tipe Form) dengan Otomatis Update
    login.Open Browser Website
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Click Button Add
    template_form.On Button Otomatis Update
    template_form.Select Target Update Otomatis
    # canvas
    template_form.Click Button Buat Canvas
    template_form.Input Tab Index Canvas    1
    template_form.Select Tipe Form Canvas
    template_form.Input Nama Canvas    Nama canvas
    template_form.Input Web Service Awal Canvas  webServiceAwal
    template_form.Select Data Table Canvas
    template_form.Input No Urut Canvas    1
    template_form.Click Button Simpan Canvas
    # end canvas
    # buat tab
    template_form.Click Button Buat Tab
    template_form.Input Label Buat Tab  label
    template_form.Click Button Simpan Buat Tab
    # end buat tab
    # buat tombol
    template_form.Click Button Buat Tombol
    template_form.Select Jenis Aksi Buat
    template_form.Input Link Buat Tombol  https://www.google.com/
    template_form.Input Label Buat Tombol  label
    template_form.Click Button Simpan Buat Tombol
    # end buat tombol
    template_form.Input Nama Form    Form Rian Type Form
    template_form.Input Field Kunci    Field Kunci
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Create New Template Form (Tipe Table)
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC03 - Create New Template Form (Tipe Table)
    login.Open Browser Website
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Click Button Add
    # Buat filter
    template_form.Click Button Buat Filter
    template_form.Input Label Pengaturan Filter    Label
    template_form.Input Variable Pengaturan Filter    Var
    template_form.Select Tipe Pengaturan Filter
    Capture Page Screenshot
    template_form.Click Button Simpan Pengaturan Filter
    # end filter
    # Canvas
    template_form.Click Button Buat Canvas
    template_form.Input Tab Index Canvas  1
    template_form.Select Tipe Tabel Canvas
    template_form.Input Nama Canvas  namaCanvas
    template_form.Input Web Service Awal Canvas  webServiceAwal
    template_form.Select Data Table Canvas
    template_form.Input No Urut Canvas  1
    Capture Page Screenshot
    template_form.Click Button Simpan Canvas
    # End Canvas
    # Tab
    template_form.Click Button Buat Tab
    template_form.Input Label Buat Tab  label
    Capture Page Screenshot
    template_form.Click Button Simpan Buat Tab
    # End Tab
    # Buat tombol
    template_form.Click Button Buat Tombol
    template_form.Select Jenis Aksi Buat
    template_form.Input Link Buat Tombol    https://www.google.com/
    template_form.Input Label Buat Tombol      label
    Capture Page Screenshot
    template_form.Click Button Simpan Buat Tombol
    # End buat tombol
    template_form.Input Nama Form    Form Rian Type Table
    template_form.Input Field Kunci    Field Kunci
    template_form.Click Button Simpan Data
#    Sleep   2s
#    Capture Page Screenshot
#    [Teardown]    Close Browser

TC04 - Create New Template Form (Tipe Tabel Grid)
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC04 - Create New Template Form (Tipe Tabel Grid)
    login.Open Browser Website
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Click Button Add
    # Buat Filter
    template_form.Click Button Buat Filter
    template_form.Input Label Pengaturan Filter    Label
    template_form.Input Variable Pengaturan Filter    Var
    template_form.Select Tipe Pengaturan Filter
    template_form.Click Button Simpan Pengaturan Filter
    # End buat filter
    # Buat canvas
    template_form.Click Button Buat Canvas
    template_form.Input Tab Index Canvas    1
    template_form.Select Tipe Tabel Grid Canvas
    template_form.Input Nama Canvas    Nama canvas
    template_form.Input Web Service Awal Canvas  webServiceAwal
    template_form.Select Data Table Canvas
    template_form.Input No Urut Canvas    1
    template_form.Click Button Simpan Canvas
    # End buat canvas
    # Buat tab
    template_form.Click Button Buat Tab
    template_form.Input Label Buat Tab  label
    template_form.Click Button Simpan Buat Tab
    template_form.Click Button Buat Tombol
    template_form.Select Jenis Aksi Buat
    template_form.Input Link Buat Tombol      https://www.google.com/
    template_form.Input Label Buat Tombol     Label
    template_form.Click Button Simpan Buat Tombol
    # End buat tombol
    template_form.Input Nama Form    Form Rian Type Table Grid
    template_form.Input Field Kunci    Field Kunci
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC05 - Create New Template Form (Tipe Tabel Statik)
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC05 - Create New Template Form (Tipe Tabel Statik)
    login.Open Browser Website
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Click Button Add
    # Buat Filter
    template_form.Click Button Buat Filter
    template_form.Input Label Pengaturan Filter    Label
    template_form.Input Variable Pengaturan Filter    Var
    template_form.Select Tipe Pengaturan Filter
    template_form.Click Button Simpan Pengaturan Filter
    # End buat filter
    # Buat canvas
    template_form.Click Button Buat Canvas
    template_form.Input Tab Index Canvas    1
    template_form.Select Tipe Tabel Static Canvas
    template_form.Input Nama Canvas    Nama canvas
    template_form.Input Web Service Awal Canvas  webServiceAwal
    template_form.Select Data Table Canvas
    template_form.Input No Urut Canvas    1
    template_form.Click Button Simpan Canvas
    # End buat canvas
    # Buat tab
    template_form.Click Button Buat Tab
    template_form.Input Label Buat Tab  label
    template_form.Click Button Simpan Buat Tab
    template_form.Click Button Buat Tombol
    template_form.Select Jenis Aksi Buat
    template_form.Input Link Buat Tombol      https://www.google.com/
    template_form.Input Label Buat Tombol     Label
    template_form.Click Button Simpan Buat Tombol
    # End buat tombol
    template_form.Input Nama Form    Form Rian Type Tabel Statik
    template_form.Input Field Kunci    Field Kunci
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC06 - Create New Template Form (Tipe Map)
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC06 - Create New Template Form (Tipe Map)
    login.Open Browser Website
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Click Button Add
    # Buat Filter
    template_form.Click Button Buat Filter
    template_form.Input Label Pengaturan Filter    Label
    template_form.Input Variable Pengaturan Filter    Var
    template_form.Select Tipe Pengaturan Filter
    template_form.Click Button Simpan Pengaturan Filter
    # End buat filter
    # Buat canvas
    template_form.Click Button Buat Canvas
    template_form.Input Tab Index Canvas    1
    template_form.Select Tipe Tabel Map Canvas
    template_form.Input Nama Canvas    Nama canvas
    template_form.Input Web Service Awal Canvas  webServiceAwal
    template_form.Select Data Table Canvas
    template_form.Input No Urut Canvas    1
    template_form.Click Button Simpan Canvas
    # End buat canvas
    # Buat tab
    template_form.Click Button Buat Tab
    template_form.Input Label Buat Tab  label
    template_form.Click Button Simpan Buat Tab
    template_form.Click Button Buat Tombol
    template_form.Select Jenis Aksi Buat
    template_form.Input Link Buat Tombol      https://www.google.com/
    template_form.Input Label Buat Tombol     Label
    template_form.Click Button Simpan Buat Tombol
    # End buat tombol
    template_form.Input Nama Form    Form Rian Tipe Map
    template_form.Input Field Kunci    Field Kunci
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser
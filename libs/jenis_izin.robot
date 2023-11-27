*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Firefox
${SPEED}            0.1s

*** Keywords ***
Move To Jenis Izin
    Go To    https://uji.sicantik.go.id/jenis-izin
    Sleep    2s
    Page Should Contain    Daftar Jenis Izin
    
Detail Jenis Izin
    Wait Until Element Is Visible    //*[@class="fas fa-eye text-info me-3 pe-auto cursor-pointer"]
    Click Element    //*[@class="fas fa-eye text-info me-3 pe-auto cursor-pointer"]
    Wait Until Page Contains    Detail

Click Icon Edit
    Wait Until Element Is Visible    //*[@class="far fa-edit text-success me-3 pe-auto"]
    Click Element    //*[@class="far fa-edit text-success me-3 pe-auto"]
    Wait Until Page Contains    UBAH JENIS IZIN

Click Btn Filter
    Wait Until Element Is Visible    //*[@data-bs-target="#collapseBtnFilter"]
    Click Element    //*[@data-bs-target="#collapseBtnFilter"]
    Sleep    0.5s
    
Input Jenis Izin
    Wait Until Element Is Visible    //*[@placeholder="Jenis Izin"]
    [Arguments]     ${jenisIzin}
    Input Text    //*[@placeholder="Jenis Izin"]    ${jenisIzin}
    
Click Btn Tampilkan Hasil
    Wait Until Element Is Visible    //*[@class="btn btn-primary me-2"]
    Click Button    //*[@class="btn btn-primary me-2"]
    Sleep    2s
    
Duplicate
    Wait Until Element Is Visible    //*[@class="far fa-file text-primary me-3 pe-auto cursor-pointer el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="far fa-file text-primary me-3 pe-auto cursor-pointer el-tooltip__trigger el-tooltip__trigger"]
    Sleep    0.5s
    Press Keys      None    ENTER

Click Btn Tambah Data
    Wait Until Element Is Visible    //*[@class="btn btn-primary align-self-center text-nowrap"]
    Click Button    //*[@class="btn btn-primary align-self-center text-nowrap"]
    Wait Until Page Contains    TAMBAH JENIS IZIN
    
Input Nama Jenis Izin
    Wait Until Element Is Visible    name:jenis_izin
    [Arguments]     ${namaJenisIzin}
    Clear Element Text    name:jenis_izin
    Input Text    name:jenis_izin    ${namaJenisIzin}

Input Kode OSS
    Wait Until Element Is Visible    name:kodeOss
    [Arguments]     ${param}
    Clear Element Text    name:kodeOss
    Input Text    name:kodeOss    ${param}

Input Deskripsi Izin
    Wait Until Element Is Visible    //*[@placeholder="Masukan Deskripsi Izin"]
    [Arguments]     ${param}
    Clear Element Text    //*[@placeholder="Masukan Deskripsi Izin"]
    Input Text    //*[@placeholder="Masukan Deskripsi Izin"]    ${param}

Select Jenis Dokumen
    Wait Until Element Is Visible    name:jenisDokumen
    Click Element    name:jenisDokumen
    [Arguments]     ${jenisDokumen}
    Press Keys      None    ${jenisDokumen}
    Sleep    0.5s
    Press Keys      None    ENTER
    
Click Btn Selanjutnya
    Wait Until Element Is Visible    //*[@class="btn btn-lg btn-primary"]
    Click Button    default:Selanjutnya
    Sleep    0.5s

#Step 2
Click Btn Tambah Jenis Pengajuan
    Wait Until Element Is Visible    id:addFieldJenisPengajuan
    Click Button    id:addFieldJenisPengajuan
    Sleep    0.5s

Select Jenis Pengajuan
    Wait Until Element Is Visible    name:kategori
    [Arguments]     ${param}
    Click Element    name:kategori
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER
    
Select Alur Proses
    Wait Until Element Is Visible    name:alurProses
    [Arguments]     ${param}
    Click Element    name:alurProses
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Format Nomor
    Wait Until Element Is Visible    //*[@placeholder="Pilih Satuan"]
    [Arguments]     ${param}
    Click Element    //*[@placeholder="Pilih Satuan"]
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Satuan Masa Berlaku
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div[2]/form/div[2]/div[1]/div[3]/div/div[2]/div/div/div/div[9]/div/div/div/div/input
    [Arguments]     ${param}
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div[2]/form/div[2]/div[1]/div[3]/div/div[2]/div/div/div/div[9]/div/div/div/div/input
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Click Btn Simpan
    Wait Until Element Is Visible    //*[@class="btn btn-lg btn-primary me-3"]
    Click Button    //*[@class="btn btn-lg btn-primary me-3"]
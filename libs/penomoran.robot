*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library    XML

*** Keywords ***
Move To Penomoran
    Go To       https://uji.sicantik.go.id/penomoran
    Wait Until Page Contains    Daftar Penomoran
    Sleep    2s

Search
    Wait Until Element Is Visible    id:kt_filter_search
    [Arguments]     ${param}
    Input Text    id:kt_filter_search    ${param}
    Sleep    3s

Click Icon Edit
    Wait Until Element Is Visible    //*[@class="fas fa-edit"]
    Click Element    //*[@class="fas fa-edit"]
    Wait Until Page Contains    UBAH PENOMORAN

Detail Penomoran
    Wait Until Element Is Visible    //*[@class="fas fa-eye"]
    Click Element    //*[@class="fas fa-eye"]
    Wait Until Page Contains    DETAIL PENOMORAN

Click Btn Tambah Data
    Wait Until Element Is Visible    //*[@class="btn btn-primary align-self-center"]
    Click Button    //*[@class="btn btn-primary align-self-center"]
    Wait Until Page Contains    TAMBAH PENOMORAN

Input Deskripsi Penomoran
    Wait Until Element Is Visible    name:deskripsi
    Clear Element Text    name:deskripsi
    [Arguments]     ${param}
    Input Text    name:deskripsi    ${param}

Input Format Penomoran
    Wait Until Element Is Visible    name:formatPenomoran
    Clear Element Text    name:formatPenomoran
    [Arguments]     ${param}
    Input Text    name:formatPenomoran    ${param}

Select Cari Instansi
    Wait Until Element Is Visible    name:instansi_id
    Click Element    name:instansi_id
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER

Swith On Reset Penomoran
    Wait Until Element Is Visible    class:el-switch__core
    Click Element    class:el-switch__core

Click Btn Kategori Item
    Wait Until Element Is Visible    id:addFieldJenisPengajuan
    Click Button    id:addFieldJenisPengajuan
    Sleep    1s

Select Unit Kerja
    Wait Until Element Is Visible    name:unitKerja-0
    Click Element    name:unitKerja-0
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Press Keys      None    ENTER

Input No Terakhir
    Wait Until Element Is Visible    name:noterakhir-0
    Clear Element Text    name:noterakhir-0
    [Arguments]     ${param}
    Input Text    name:noterakhir-0    ${param}
    
Click Btn Simpan
    Wait Until Element Is Visible    //*[@class="btn btn-primary"]
    Click Button    default:Simpan
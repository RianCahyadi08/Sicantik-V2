*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Alur Proses Module
    Go To       https://uji.sicantik.go.id/alur-proses
    Wait Until Page Contains    Daftar Alur Proses
    Sleep    2s

Delete Alur Proses
    Wait Until Element Is Visible    //*[@class="far fa-trash-alt text-danger me-3 pe-auto cursor-pointer el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="far fa-trash-alt text-danger me-3 pe-auto cursor-pointer el-tooltip__trigger el-tooltip__trigger"]
    Sleep    0.5s
    Press Keys      None    ENTER

Click Icon Edit
    Wait Until Element Is Visible    //*[@class="far fa-edit text-success me-3 pe-auto"]
    Click Element    //*[@class="far fa-edit text-success me-3 pe-auto"]
    Wait Until Page Contains    UBAH ALUR PROSES

Duplicate Alur Proses
    Wait Until Element Is Visible    //*[@class="far fa-file text-primary me-3 pe-auto cursor-pointer el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="far fa-file text-primary me-3 pe-auto cursor-pointer el-tooltip__trigger el-tooltip__trigger"]
    Sleep    0.5s
    Press Keys      None    ENTER

Detail Alur Proses
    Wait Until Element Is Visible    //*[@class="fas fa-eye text-info me-3 pe-auto"]
    Click Element    //*[@class="fas fa-eye text-info me-3 pe-auto"]
    Wait Until Page Contains    DETAIL ALUR PROSES

Click Btn Filter
    Wait Until Element Is Visible    //*[@aria-controls="collapseBtnFilter"]
    Click Button    //*[@aria-controls="collapseBtnFilter"]
    Sleep    0.5s

Input Alur Proses
    Wait Until Element Is Visible    //*[@placeholder="Alur Proses"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Alur Proses"]    ${param}
    
Click Btn Tampilkan Hasil
    Wait Until Element Is Visible    //*[@class="btn btn-primary me-2"]
    Click Button    default:Tampilkan hasil
    Sleep    2s

Click Btn Tambah Data
    Wait Until Element Is Visible    //*[@class="btn btn-primary align-self-center text-nowrap"]
    Click Button    //*[@class="btn btn-primary align-self-center text-nowrap"]
    Wait Until Page Contains    TAMBAH ALUR PROSES

Input Nama Alur Proses
    Wait Until Element Is Visible    name:alurProses
    Clear Element Text    name:alurProses
    [Arguments]     ${param}
    Input Text    name:alurProses    ${param}

Click Btn Tambah Tahapan Proses
    Wait Until Element Is Visible    id:addFieldJenisPengajuan
    Click Button    id:addFieldJenisPengajuan
    Sleep    0.5s

Input No Alur Proses
    Wait Until Element Is Visible    name:no-0-card
    [Arguments]     ${param}
    Input Text    name:no-0-card    ${param}

Select Jenis Proses
    Wait Until Element Is Visible    name:jenisProses-0-card
    [Arguments]     ${param}
    Click Element    name:jenisProses-0-card
    Sleep    0.5s
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER

Select Tautan
    Wait Until Element Is Visible    name:tautan-0-card
    [Arguments]     ${param}
    Click Element    name:tautan-0-card
    Sleep    0.5s
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Report
    Wait Until Element Is Visible    name:report-0-card
    [Arguments]     ${param}
    Click Element    name:report-0-card
    Sleep    0.5s
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER

Select Jenis TTD
    Press Keys      None    TAB
    Sleep    0.5s
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Jabatan Satu
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/form/div/div[3]/div[3]/span/div/div/div/div/div/div[3]/div/div[9]/label
    Press Keys      None    TAB
    Sleep    0.5s
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER

Select Jabatan Dua
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/form/div/div[3]/div[3]/span/div/div/div/div/div/div[3]/div/div[10]/label
    Press Keys      None    TAB
    Sleep    0.5s
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER

Click Btn Simpan Data
    Wait Until Element Is Visible    //*[@class="btn btn-primary"]
    Click Button    default:Simpan Data
    Sleep    7s
*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Firefox
${SPEED}            0.1s

*** Keywords ***
Move To Pengguna
    Go To    https://uji.sicantik.go.id/pengguna
    Sleep    2s
    Wait Until Page Contains    Daftar Pengguna

Search
    [Arguments]     ${search}
    Input Text    id:kt_filter_search    ${search}
    Sleep    5s

Detail Pengguna
    Wait Until Element Is Visible    //*[@class="fas fa-eye text-primary me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="fas fa-eye text-primary me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    DETAIL PENGGUNA

Click Icon Edit
    Wait Until Element Is Visible    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    FORM PENGGUNA

Click Btn Tambah
    Wait Until Element Is Visible    //*[@class="text-white fw-bolder"]
    Click Element    //*[@class="text-white fw-bolder"]
    Wait Until Page Contains    FORM PENGGUNA

Input Username
    Wait Until Element Is Visible    name:username
    Clear Element Text    name:username
    [Arguments]     ${username}
    Input Text    name:username    ${username}

Input Kata Sandi
    Wait Until Element Is Visible    name:password
    Clear Element Text    name:password
    [Arguments]     ${kataSandi}
    Input Text    name:password    ${kataSandi}

Input Email
    Wait Until Element Is Visible    name:email
    Clear Element Text    name:email
    [Arguments]     ${email}
    Input Text    name:email    ${email}

Input Konfirmasi Kata Sandi
    Wait Until Element Is Visible    name:password2
    Clear Element Text    name:password2
    [Arguments]     ${konfirmasiKataSandi}
    Input Text    name:password2    ${konfirmasiKataSandi}

Select Peran
    Wait Until Element Is Visible    name:peran
    [Arguments]     ${peran}
    Click Element    name:peran
    Press Keys      None    ${peran}
    Sleep    1s
    Press Keys      None    ENTER

Select Pegawai
    Wait Until Element Is Visible    name:pegawai_id
    [Arguments]     ${pegawai}
    Click Element    name:pegawai_id
    Press Keys      None    ${pegawai}
    Sleep    1s
    Press Keys      None    ENTER
    
Click Btn Selanjutnya
    Wait Until Element Is Visible    //*[@class="btn btn-lg btn-primary"]
    Click Button    //*[@class="btn btn-lg btn-primary"]
    Sleep    1s
    
Click Btn Simpan
    Wait Until Element Is Visible    //*[@class="btn btn-lg btn-primary me-3"]
    Click Button    //*[@class="btn btn-lg btn-primary me-3"]
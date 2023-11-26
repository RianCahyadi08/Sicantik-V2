*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Firefox
${SPEED}            0.1s

*** Keywords ***
Move To Master Jabatan
    Go To    https://uji.sicantik.go.id/form/list/68
    Wait Until Page Contains    Daftar Jabatan

Search
    [Arguments]     ${search}
    Input Text    //*[@class="form-control form-control-white form-control-lg ps-9"]    Jabatan Rian Tiga
    Sleep    3s

Click Btn Buat Baru
    Click Button    //*[@class="btn btn-primary mx-1"]
    Wait Until Page Contains    Form Master Jabatan

Click Icon Edit
    Click Element    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    Form Master Jabatan

Input Jabatan
    [Arguments]     ${jabatan}
    Clear Element Text    //*[@placeholder="Masukan Jabatan"]
    Input Text    //*[@placeholder="Masukan Jabatan"]    ${jabatan}

Input Keterangan
    [Arguments]     ${keterangan}
    Clear Element Text    //*[@placeholder="Masukan Keterangan"]
    Input Text    //*[@placeholder="Masukan Keterangan"]    ${keterangan}

Click Btn Save
    Click Button    //*[@class="btn btn-primary mx-1"]
    Wait Until Page Contains    Form berhasil disimpan.
    
Delete
    Click Element    //*[@class="far fa-trash-alt text-danger pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Sleep    0.5s
    Press Keys      None    ENTER
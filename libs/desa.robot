*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Desa
    Go To    https://uji.sicantik.go.id/desa
    Wait Until Page Contains    Daftar Desa
    Sleep    2s

Click Btn Tambah Data
    Wait Until Element Is Visible    //*[@class="btn btn-primary"]
    Click Button    //*[@class="btn btn-primary"]
    Wait Until Page Contains    Silahkan masukkan provinsi, kota/kabupaten, kecamtan, kode dan nama desa/kelurahan.

Detail Desa
    Click Element    //*[@class="fas fa-eye text-primary me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    Detail

Select Provinsi
    Click Element    name:provinsi_id
    [Arguments]     ${provinsi}
    Press Keys      None    ${provinsi}
    Press Keys      None    ENTER

Select Kota
    Click Element    name:kabupaten_id
    [Arguments]     ${kota}
    Press Keys      None    ${kota}
    Press Keys      None    ENTER

Select Kecamatan
    Click Element    name:kecamatan_id
    [Arguments]     ${kecamatan}
    Press Keys      None    ${kecamatan}
    Press Keys      None    ENTER
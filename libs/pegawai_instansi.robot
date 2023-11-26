*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Firefox
${SPEED}            0.1s

*** Keywords ***
Move To Pegawai Instansi
    Go To    https://uji.sicantik.go.id/form/list/52
    Wait Until Page Contains    Daftar Pegawai Instansi

Search
    [Arguments]     ${search}
    Input Text    //*[@class="form-control form-control-white form-control-lg ps-9"]    ${search}
    Sleep    3s

Delete
    Wait Until Element Is Visible    //*[@class="far fa-trash-alt text-danger pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="far fa-trash-alt text-danger pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Sleep    1s
    Click Button    default:Ya, Hapus

Click Btn Edit
    Wait Until Element Is Visible    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]

Click Btn Add
    Wait Until Element Is Visible    //*[@class="btn btn-primary mx-1"]
    Click Element    //*[@class="btn btn-primary mx-1"]
    Wait Until Page Contains    Form Pegawai Instansi

Upload Photo
#    Wait Until Element Is Visible    name:file[0]
    [Arguments]     ${photo}
    Choose File    name:file[0]    ${photo}
#    C:\\Users\\ReiKa\\PycharmProjects\\Sicantik\\assets\\sw.pdf

Input NIK
    Wait Until Element Is Visible    //*[@placeholder="Masukan NIK"]
    Clear Element Text    //*[@placeholder="Masukan NIK"]
    [Arguments]     ${nik}
    Input Text    //*[@placeholder="Masukan NIK"]    ${nik}

Input No Induk Pegawai
    Wait Until Element Is Visible    //*[@placeholder="Masukan No Induk Pegawai"]
    Clear Element Text    //*[@placeholder="Masukan No Induk Pegawai"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Masukan No Induk Pegawai"]    ${param}

Input Nama Pegawai
    Wait Until Element Is Visible    //*[@placeholder="Masukan Nama Pegawai"]
    Clear Element Text    //*[@placeholder="Masukan Nama Pegawai"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Masukan Nama Pegawai"]    ${param}

Input Email
    Wait Until Element Is Visible    //*[@placeholder="Masukan Email"]
    Clear Element Text    //*[@placeholder="Masukan Email"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Masukan Email"]    ${param}

Input No Hp
    Wait Until Element Is Visible    //*[@placeholder="Masukan No HP"]
    Clear Element Text    //*[@placeholder="Masukan No HP"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Masukan No HP"]    ${param}

Select Instansi
    Wait Until Element Is Visible    //*[@placeholder="Masukan Instansi"]
    [Arguments]     ${param}
    Click Element    //*[@placeholder="Masukan Instansi"]
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Unit
    Wait Until Element Is Visible    //*[@placeholder="Masukan Unit"]
    [Arguments]     ${param}
    Click Element    //*[@placeholder="Masukan Unit"]
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Jabatan
    Wait Until Element Is Visible    //*[@placeholder="Masukan jabatan"]
    [Arguments]     ${param}
    Click Element    //*[@placeholder="Masukan jabatan"]
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Input Posisi
    Wait Until Element Is Visible    //*[@placeholder="Masukan Posisi"]
    Clear Element Text    //*[@placeholder="Masukan Posisi"]
    [Arguments]     ${param}
    Input Text      //*[@placeholder="Masukan Posisi"]     ${param}

Click Btn Simpan
    Wait Until Element Is Visible    //*[@class="btn btn-primary mx-1"]
    Click Button    //*[@class="btn btn-primary mx-1"]
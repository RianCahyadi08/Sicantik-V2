*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Struktur Instansi
    Go To    https://uji.sicantik.go.id/unit
    Wait Until Page Contains    Struktur Instansi
    Sleep    2s

Detail Struktur Instansi
    Click Element    //*[@class="fas fa-eye"]

Search
    [Arguments]     ${search}
    Input Text    id:kt_filter_search    ${search}
    Sleep    2s

Click Btn Tambah
    Click Element    //*[@class="btn btn-primary mt-5"]
    Sleep    1s
#    Wait Until Page Contains    TAMBAH INSTANSI

Input Nama Instansi
    Wait Until Element Is Visible    name:nama
    Clear Element Text    name:nama
    [Arguments]     ${namaInstansi}
    Input Text    name:nama    ${namaInstansi}

Input Kode Instansi
    Wait Until Element Is Visible    //*[@placeholder="Masukan Kode Instansi"]
    Clear Element Text    //*[@placeholder="Masukan Kode Instansi"]
    [Arguments]     ${kodeInstansi}
    Input Text    //*[@placeholder="Masukan Kode Instansi"]    ${kodeInstansi}

Select Kode Daerah
    Wait Until Element Is Visible    //*[@placeholder="Pilih Daerah"]
    Clear Element Text    //*[@placeholder="Pilih Daerah"]
    [Arguments]     ${kodeDaerah}
    Click Element    //*[@placeholder="Pilih Daerah"]
    Press Keys      None    ${kodeDaerah}
    Press Keys      None    ENTER
#    Input Text    //*[@placeholder="Pilih Daerah"]    ${kodeDaerah}

Input WS Url
    Wait Until Element Is Visible    //*[@placeholder="Silahkan MAsukan WS URL"]
    Clear Element Text    //*[@placeholder="Silahkan MAsukan WS URL"]
    [Arguments]     ${wsUrl}
    Input Text    //*[@placeholder="Silahkan MAsukan WS URL"]    ${wsUrl}

Select Induk Instansi
    Wait Until Element Is Visible    //*[@placeholder="Pilih induk instansi"]
    [Arguments]     ${indukInstansi}
    Clear Element Text    //*[@placeholder="Pilih induk instansi"]
    Click Element    //*[@placeholder="Pilih induk instansi"]
    Press Keys      None    ${indukInstansi}
    Press Keys      None    ENTER
#    Input Text    //*[@placeholder="Pilih induk instansi"]    ${indukInstansi}

Click Btn Save
    Click Button    default:Simpan
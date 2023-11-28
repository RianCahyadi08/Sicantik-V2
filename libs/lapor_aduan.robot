*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Lapor Aduan Pemohon
    Go To    https://uji.sicantik.go.id/aduan
    Wait Until Page Contains    DAFTAR ADUAN
    Sleep    3s

Search
    Wait Until Element Is Visible    //*[@placeholder="Pencarian aduan"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Pencarian aduan"]    ${param}
    Sleep    3s

Click Btn Tambah Aduan
    Wait Until Element Is Visible    //*[@class="btn btn-block btn-primary w-100"]
    Click Button    //*[@class="btn btn-block btn-primary w-100"]
    Sleep    1s

Input Aduan
    Wait Until Element Is Visible    name:judul
    [Arguments]     ${param}
    Input Text    name:judul    ${param}

Select Kategori Kendala
    Wait Until Element Is Visible    name:kategori
    Click Element    name:kategori
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER

Select Instansi
    Wait Until Element Is Visible    name:instansi
    Click Element    name:instansi
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER
    
Upload Lampiran
    Wait Until Element Is Visible    name:file
    [Arguments]     ${param}
    Choose File    name:file    ${param}

Input Keterangan
    Wait Until Element Is Visible    name:keterangan
    [Arguments]     ${param}
    Input Text    name:keterangan    ${param}
    
Input Kendala Teknis
    Wait Until Element Is Visible    name:kendala
    [Arguments]     ${param}
    Input Text    name:kendala    ${param}

Click Btn Submit Aduan
    Wait Until Element Is Visible    //*[@class="btn btn-primary"]
    Click Button    //*[@class="btn btn-primary"]

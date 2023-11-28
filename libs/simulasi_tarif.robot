*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Simulasi Tarif
    Go To    https://uji.sicantik.go.id/simulasi-tarif
    Wait Until Page Contains    Simulasi Tarif
    Sleep    3s

Select Jenis Izin
    Wait Until Element Is Visible    //*[@placeholder="Pilih Jenis Izin"]
    Click Element    //*[@placeholder="Pilih Jenis Izin"]
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER
    Sleep    1s

Select Jenis Retribusi
    Wait Until Element Is Visible    //*[@placeholder="Pilih Item"]
    Click Element    //*[@placeholder="Pilih Item"]
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER
    Sleep    1s

Input Jumlah Item
    Press Keys      None    TAB
    [Arguments]     ${param}
    Press Keys      None    ${param}

Click Btn Hitung Total
    Wait Until Element Is Visible    //*[@class="btn btn-primary float-end px-5"]
    Click Button    //*[@class="btn btn-primary float-end px-5"]
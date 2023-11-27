*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Tarif Izin
    Go To    https://uji.sicantik.go.id/tarif-izin
    Wait Until Page Contains    Daftar Tarif
    Sleep    3s

Detail Tarif Izin
    Wait Until Element Is Visible    //*[@class="fas fa-eye text-primary pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="fas fa-eye text-primary pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    Detail
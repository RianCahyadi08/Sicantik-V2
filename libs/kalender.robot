*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Kalender
    Go To    https://uji.sicantik.go.id/kalender
    Wait Until Page Contains    Daftar Kalender
    Sleep    2s
    
Detail Kalender
    Wait Until Element Is Visible    //*[@class="fas fa-eye text-primary me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="fas fa-eye text-primary me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    Hari Off
    
Click Icon Edit
    Wait Until Element Is Visible    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    Input Hari Off

Click Btn Tambah Data
    Wait Until Element Is Visible    id:addFieldJenisPengajuan
    Click Button    id:addFieldJenisPengajuan
    Sleep    0.5s
    
Select Hari
    Wait Until Element Is Visible    //*[@placeholder="Pilih Hari"]
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div[3]/div[2]/table/tbody/tr[2]/td[2]/div/div/div/div/input
    [Arguments]     ${hari}
    Press Keys      None    ${hari}
    Sleep    0.5s
    Press Keys      None    ENTER

Click Btn Simpan
    Wait Until Element Is Visible    //*[@class="btn btn-primary"]
    Click Button    //*[@class="btn btn-primary"]
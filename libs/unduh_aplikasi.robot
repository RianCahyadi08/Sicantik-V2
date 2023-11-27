*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Unduh Aplikasi
    Go To    https://uji.sicantik.go.id/form/list/11125
    Wait Until Page Contains    Daftar Aplikasi Mobile
    Sleep    3s
    
Search
    [Arguments]     ${param}
    Input Text    //*[@class="form-control form-control-white form-control-lg ps-9"]    ${param}
    Sleep    3s
    
Detail
    Wait Until Element Is Visible    //*[@class="fas fa-eye text-primary me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="fas fa-eye text-primary me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    View - Aplikasi Mobile
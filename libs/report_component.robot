*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Report Component
    Go To    https://uji.sicantik.go.id/report-component
    Wait Until Page Contains    Setting Report Component
    Sleep    3s

Detail Report Component
    Wait Until Element Is Visible    //*[@class="fas fa-eye text-primary pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="fas fa-eye text-primary pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    DETAIL JENIS IZIN
    
Search
    Wait Until Element Is Visible    //*[@class="form-control form-control-white form-control-lg ps-9"]
    [Arguments]     ${param}
    Input Text    //*[@class="form-control form-control-white form-control-lg ps-9"]    ${param}
    Sleep    3s
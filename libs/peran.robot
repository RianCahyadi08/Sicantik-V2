*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Firefox
${SPEED}            0.1s

*** Keywords ***
Move To Peran
    Go To    https://uji.sicantik.go.id/peran
    Sleep    2s
    Wait Until Page Contains    Daftar Peran

Search
    [Arguments]     ${search}
    Input Text    id:kt_filter_search    ${search}
    Sleep    3s

Click Icon Edit
    Wait Until Element Is Visible    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    Tambah Peran

Click Icon Detail
    Wait Until Element Is Visible    //*[@class="fas fa-eye text-primary me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="fas fa-eye text-primary me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    Detail Peran

Click Btn Tambah
    Wait Until Element Is Visible    //*[@class="text-white fw-bolder"]
    Click Element    //*[@class="text-white fw-bolder"]
    Wait Until Page Contains    Tambah Peran

Input Peran
    Wait Until Element Is Visible    name:label_peran
    Clear Element Text    name:label_peran
    [Arguments]     ${peran}
    Input Text    name:label_peran    ${peran}

Input Path Home
    Wait Until Element Is Visible    name:home_path
    Clear Element Text    name:home_path
    [Arguments]     ${homePath}
    Input Text    name:home_path    ${homePath}

Click Btn Save
    Click Button    default:Simpan
    Press Keys      None    ENTER

Delete
    Wait Until Element Is Visible    //*[@class="far fa-trash-alt text-danger pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="far fa-trash-alt text-danger pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Press Keys      None    ENTER

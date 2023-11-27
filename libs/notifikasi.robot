*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Click Icon Notification
    Wait Until Element Is Visible    //*[@class="far fa-bell fs-3 text-primary-custom"]
    Click Element    //*[@class="far fa-bell fs-3 text-primary-custom"]
    Sleep    1s

Click Tab Informasi
    Wait Until Element Is Visible    //*[@href="#kt_topbar_notifications_2"]
    Click Element    //*[@href="#kt_topbar_notifications_2"]
    Sleep    1s
    
Click Lihat Semua Pengumuman
#    Wait Until Element Is Visible    //*[@href="/list-notikasi-user"]
#    Click Element    //*[@href="/list-notikasi-user"]
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[1]/div/div[3]/div[2]/div[2]/div[1]/div[2]/div[2]/div[1]/div[2]/a
    Sleep    1s

Click Lihat Semua Informasi
#    Wait Until Element Is Visible    //*[@href="/list-notikasi-user"]
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[1]/div/div[3]/div[2]/div[2]/div[1]/div[2]/div[2]/div[2]/div[2]/a
    Sleep    1s
    
Move To Notifikasi
    Go To    https://uji.sicantik.go.id/notifikasi
    Wait Until Page Contains    Daftar Jenis Izin

Click Btn Filter
    Wait Until Element Is Visible    //*[@aria-controls="collapseBtnFilter"]
    Click Button    //*[@aria-controls="collapseBtnFilter"]
    Sleep    0.5s

Input Jenis Izin
    Wait Until Element Is Visible    //*[@placeholder="Jenis Izin"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Jenis Izin"]    ${param}

Click Btn Tampilkan Hasil
    Wait Until Element Is Visible    //*[@class="btn btn-primary me-2"]
    Click Button    //*[@class="btn btn-primary me-2"]
    Sleep    3s
    
Detail Notifikasi
    Wait Until Element Is Visible    //*[@class="fas fa-eye"]
    Click Element    //*[@class="fas fa-eye"]
    Sleep    2s
    Wait Until Page Contains    Notifikasi
    
Click Icon Edit
    Wait Until Element Is Visible    //*[@class="fas fa-edit"]
    Click Element    //*[@class="fas fa-edit"]
    Sleep    2s
    Wait Until Page Contains    Notifikasi
    
Select Tipe
    Wait Until Element Is Visible    name:tipe
    [Arguments]     ${param}
    Click Element    name:tipe
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Penerima
    Wait Until Element Is Visible    name:tipepenerima
    [Arguments]     ${param}
    Click Element    name:tipepenerima
    Press Keys      None    ${param}
    Sleep    0.5s
    Press Keys      None    ENTER

Click Btn Simpan
    Wait Until Element Is Visible    //*[@class="btn btn-primary"]
    Click Button    default:Simpan
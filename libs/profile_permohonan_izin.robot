*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Profile dan Permohonan Izin
    Go To    https://uji.sicantik.go.id/profile/pemohon/daftar-permohonan/permohonan
    Wait Until Page Contains    Daftar Permohonan
    Sleep    1s

Move To Profile dan Perusahaan
#    Go To    https://uji.sicantik.go.id/profile/pemohon/daftar-permohonan/perusahaan
#    Click Element    default:Perusahaan
    Wait Until Element Is Visible    //*[@href="/profile/pemohon/daftar-permohonan/perusahaan"]
    Click Element    //*[@href="/profile/pemohon/daftar-permohonan/perusahaan"]
    Wait Until Page Contains    Daftar Perusahaan
    Sleep    1s

Detail Perusahaan
    Wait Until Element Is Visible    //*[@class="fas fa-eye"]
    Click Element    //*[@class="fas fa-eye"]
    Wait Until Page Contains    Detail Perusahaan
    
Move To Profile dan Perizinan

Detail Perizininan

Move To Profile dan Dokumen
    Wait Until Element Is Visible    //*[@href="/profile/pemohon/daftar-permohonan/dokumen"]
    Click Element    //*[@href="/profile/pemohon/daftar-permohonan/dokumen"]
    Wait Until Page Contains    Daftar Dokumen
    Sleep    1s

Create Dokumen

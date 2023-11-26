*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Firefox
${SPEED}            0.1s

*** Keywords ***
Detail Total Pemohon
    Go To    https://uji.sicantik.go.id/home/pemohon
    Sleep    2s
    Page Should Contain    Daftar Jenis Pemohon

Filter Jenis Pemohon
    [Arguments]     ${jenisPemohon}
    Click Element    name:jenisPemohon
    Press Keys      None    ${jenisPemohon}
    Press Keys      None    ENTER

Search
    Wait Until Element Is Visible    id:kt_filter_search
    [Arguments]     ${search}
    Input Text    id:kt_filter_search    ${search}
    Sleep    3s

Export Jenis Pemohon
    Click Button    default:Export Jenis Pemohon
    Page Should Contain    Download file sedang disiapkan. Kami akan memberitahu jika file sudah siap

Click Tab Status Pemohon Aktif
    Click Element    //*[@href="#kt_tab_pane_5"]
    Sleep    2s
    Page Should Contain    Daftar Status Pemohon Aktif

Search Status Pemohon Aktif
    [Arguments]     ${search}
    Press Keys      None    TAB
    Press Keys      None    ${search}
    Sleep    1s

Export Status Pemohon Aktif
    Click Button    default:Export Status Pemohon Aktif
    Page Should Contain    Download file sedang disiapkan. Kami akan memberitahu jika file sudah siap

#Detail total permohonan
Detail Total Permohonan
    Go To    https://uji.sicantik.go.id/home/permohonan
    Sleep    2s
    Page Should Contain    Daftar Status Permohonan

#Total permohonan, Jenis Izin
Export
    Click Button    //*[@class="btn btn-primary mr-2"]
    Wait Until Page Contains    Export data berhasil
#    Page Should Contain    Export data berhasil

#Detail Jenis Izin
Detail Jenis Izin
    Go To    https://uji.sicantik.go.id/home/jenis-izin
    Sleep    2s
    Page Should Contain    Daftar Jenis Izin

#Detail Pegawai
Detail Total Pegawai
    Go To    https://uji.sicantik.go.id/home/pegawai
    Page Should Contain    Daftar Pegawai
    Sleep    2s

#Detail Instansi
Detail Total Unit
    Go To    https://uji.sicantik.go.id/home/unit
    Sleep    2s
    Page Should Contain    Daftar Unit

#Detail Total Pengguna
Detail Total Pengguna
    Go To    https://uji.sicantik.go.id/home/pengguna
    Sleep    2s
    Page Should Contain    Daftar Pengguna
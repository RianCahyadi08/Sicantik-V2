*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Open Browser Website
#    Open Browser                ${LOGIN URL}       ${BROWSER}       options=add_argument("--incognito")
    Open Browser                ${LOGIN URL}       ${BROWSER}       options=add_argument("--incognito")
    Maximize Browser Window
    Wait Until Page Contains    Username
    Set Selenium Speed          ${SPEED}

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    kt_sign_in_submit
    Sleep    5s

Lupa Kata Sandi
#    Click Element    default:Lupa kata sandi?
#    Click Element    partial link:/forgot
    Go To   https://uji.sicantik.go.id/forgot
    Wait Until Page Contains    LUPA KATA SANDI

Input Username Lupa Kata Sandi
    [Arguments]     ${email}
    Input Text    name:email    ${email}

Kirim Ulang Email Konfirmasi
    [Arguments]     ${email}
    Click Element    //*[@class="text-info fs-5 fw-bold"]
    Wait Until Page Contains    KIRIM ULANG EMAIL REGISTRASI
    Input Text    name:email    ${email}
    Click Button    //*[@class="btn btn-primary"]
    Wait Until Page Contains    Kode verifikasi berhasil dikirim

Click Btn Reset
    Wait Until Element Is Visible    //*[@class="btn btn-primary"]
    Click Button    //*[@class="btn btn-primary"]
    Sleep    1s

Logout
    Click Element    //*[@class="bi bi-box-arrow-left text-white fs-2"]
    Wait Until Page Contains    Apakah anda yakin?
    Press Keys      None    ENTER

#Registration
Registrasi
    Click Element    //*[@class="link-info fw-bolder"]
    Wait Until Page Contains    Pendaftaran Akun

Input Username Registrasi
    [Arguments]     ${nama}
    Input Text    name:username    ${nama}

Input Nama Lengkap
    [Arguments]     ${namaLengkap}
    Input Text    name:nama    ${namaLengkap}

Input Email
    [Arguments]     ${email}
    Input Text    name:email    ${email}

Select Instansi Tujuan
    Click Element    name:instansi
    Sleep    0.5s
    [Arguments]     ${instansi}
    Press Keys      None    ${instansi}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Sleep    0.5s
    Press Keys      None    ENTER

Click Btn Selanjutnya
    Click Button    //*[@class="btn btn-lg btn-primary"]
    Sleep    0.5s

Select Tipe Identitas
    Click Element    name:tipe_identitas
    Sleep    0.5s
    [Arguments]     ${tipeIdentitas}
    Press Keys      None    ${tipeIdentitas}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Jenis Kelamin
    Click Element    //*[@value="L"]

Input Tempat Lahir
    [Arguments]     ${tempatLahir}
    Input Text    name:tempat_lahir    ${tempatLahir}

Input Npwp
    [Arguments]     ${npwp}
    Input Text    name:npwp    ${npwp}

Input No Identitas
    [Arguments]     ${noIdentitas}
    Input Text    name:no_identitas    ${noIdentitas}

Input Pekerjaan
    [Arguments]     ${pekerjaan}
    Input Text    name:pekerjaan    ${pekerjaan}

Input Tgl Lahir
    [Arguments]     ${tglLahir}
    Input Text    name:tgl_lahir    ${tglLahir}

Upload KTP
    [Arguments]     ${KTP}
    Choose File    name:file[0]    ${KTP}

Input No Telp
    [Arguments]     ${noTelp}
    Input Text    name:no_tlp    ${noTelp}

Select Provinsi
    [Arguments]     ${provinsi}
    Click Element    name:provinsi
    Sleep    0.5s
    Press Keys      None    ${provinsi}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Kota
    [Arguments]     ${kotaKabupaten}
    Click Element    name:kotaKabupaten
    Sleep    0.5s
    Press Keys      None    ${kotaKabupaten}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Kecamatan
    [Arguments]     ${kecamatan}
    Click Element    name:kecamatan
    Sleep    0.5s
    Press Keys      None    ${kecamatan}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Desa
    [Arguments]     ${desaKelurahan}
    Click Element    name:desaKelurahan
    Sleep    0.5s
    Press Keys      None    ${desaKelurahan}
    Sleep    0.5s
    Press Keys      None    ENTER

Input Kodepos
    [Arguments]     ${kodepos}
    Input Text    name:kode_pos    ${kodepos}

Input Alamat
    [Arguments]     ${alamat}
    Input Text    name:alamat    ${alamat}

Input No Hp
    [Arguments]     ${noHp}
    Input Text    name:no_hp    ${noHp}

Input Alamat Step 3
    [Arguments]     ${alamat}
    Input Text    name:alamat    ${alamat}

Click Btn Save
    Wait Until Page Contains    Pendaftaran Akun Berhasil!
    Click Button    //*[@class="btn btn-lg btn-primary me-3"]

Login Admin Instansi
    Input Username    demo
    Input Password    Demo789*@#
    Submit Credentials
    Sleep    2s
#    Element Should Contain    xpath://*[@id="kt_header_user_menu_toggle"]/div[2]/span[1]    DEMO

Login Admin Pusat
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Element Should Contain    //*[@class="d-flex text-white fs-6 fw-bold text-uppercase lh-1 mb-1"]    ADMEGOV

Login Pemohon
    Input Username    cahyadirian
    Input Password    P@55word
    Submit Credentials
    Element Should Contain    //*[@class="fs-8 fw-semibold text-uppercase lh-1 mb-1"]    Pemohon

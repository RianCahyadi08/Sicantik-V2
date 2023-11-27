** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          login.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Keywords ***
Move To Template Data
    Go To    https://uji.sicantik.go.id/template-data
    Wait Until Page Contains    Daftar Template Data
    Sleep    2s

Click Button Filter
    Wait Until Element Is Visible    //*[@aria-controls="collapseBtnFilter"]
    Click Button    //*[@aria-controls="collapseBtnFilter"]

Input ID Template Data
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label
    Press Keys          None    TAB
    [Arguments]         ${id}
    Press Keys          None    ${id}

Input Nama Template Data Filter
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[2]/label
    Press Keys          None    TAB
    [Arguments]         ${namaTemplate}
    Press Keys          None    ${namaTemplate}

Click Button Tampilkan Hasil
    Click Button    default:Tampilkan hasil
    Sleep    3s

Move To Add Template Data
    Wait Until Element Is Visible    //*[@class="btn btn-primary align-self-center text-nowrap"]
    Click Button    //*[@class="btn btn-primary align-self-center text-nowrap"]
    Wait Until Page Contains    Tambah Template data

Input Nama Template Data
    Wait Until Element Is Visible    //*[@placeholder="Masukan Nama Template Data"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Masukan Nama Template Data"]    ${param}
#    Click Element    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[3]/div[1]/label
#    Press Keys      None    TAB
#    [Arguments]     ${namaTemplateData}
#    Press Keys      None    ${namaTemplateData}

Select Tipe Keluaran
    Wait Until Element Is Visible    //*[@placeholder="Pilih Tipe Keluaran"]
    Click Element    //*[@placeholder="Pilih Tipe Keluaran"]
    [Arguments]     ${param}
    Press Keys      None    ${param}
    Sleep    0.8s
    Press Keys      None    ENTER

Switch Output PDF
    Wait Until Element Is Visible    //*[@id="kt_content_container"]/div[1]/form/div/div[3]/div[3]/div/span
    Click Element    //*[@id="kt_content_container"]/div[1]/form/div/div[3]/div[3]/div/span

Switch Dapat Download Pemohon
    Wait Until Element Is Visible    //*[@id="kt_content_container"]/div[1]/form/div/div[3]/div[4]/div/span
    Click Element    //*[@id="kt_content_container"]/div[1]/form/div/div[3]/div[4]/div/span

Upload Template
    [Arguments]     ${file}
    Choose File     name:file    ${file}

Click Button Tambah Kelompok Data
    Wait Until Element Is Visible    //*[@class="btn btn-custom btn-info"]
    Click Button    //*[@class="btn btn-custom btn-info"]
#    Click Button    default:Tambah Kelompok Data
    Sleep    0.5s

Input Label Kelompok
    Wait Until Element Is Visible    name:label_kelompok
    [Arguments]     ${labelKelompok}
    Input Text    name:label_kelompok    ${labelKelompok}

Select Tipe
    Wait Until Element Is Visible    name:tipe
    [Arguments]     ${tipe}
    Click Element    name:tipe
#    Press Keys      None    TAB
    Press Keys      None    ${tipe}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Jenis Sumber
    Wait Until Element Is Visible    name:jenis_sumber
    [Arguments]     ${jenisSumber}
    Click Element    name:jenis_sumber
    Press Keys      None    ${jenisSumber}
    Sleep    0.5s
    Press Keys      None    ENTER

Input Query
    Wait Until Element Is Visible    //*[@class="btn btn-custom btn-sm btn-success me-2"]
    Click Element    //*[@class="btn btn-custom btn-sm btn-success me-2"]
    Sleep    1s
    Wait Until Element Is Visible    //*[@placeholder="Masukan Query"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Masukan Query"]    ${param}
    Sleep    0.5s
    Press Keys      None    TAB
    Sleep    0.5s
    Press Keys      None    TAB
    Sleep    0.5s
    Press Keys      None    ENTER

Click Icon Test Query Sql
    Wait Until Element Is Visible    //*[@class="btn btn-custom btn-sm btn-success"]
#    Wait Until Element Is Visible    css:i.fa-wrench
#    Click Element    css:i.fa-wrench
    Click Element    //*[@class="btn btn-custom btn-sm btn-success"]
#    Element Should Contain    xpath://*[@id="modalTestQuerySql"]/div/div/div[1]/h5    TEST QUERY SQL

Input Key Id
    Wait Until Element Is Visible    name:key_id
    [Arguments]     ${keyId}
    Input Text    name:key_id    ${keyId}

Input Unit Id
    Wait Until Element Is Visible    name:unit_id
    [Arguments]     ${unitId}
    Input Text    name:unit_id    ${unitId}

Input Instansi Id
    Wait Until Element Is Visible    name:instansi_id
    [Arguments]     ${instansiId}
    Input Text    name:instansi_id    ${instansiId}

Input Custom Variable
    Wait Until Element Is Visible    //*[@placeholder="Contoh: $var1=100&$var2=200"]
#    Press Keys      None    TAB
    [Arguments]     ${customVariable}
#    Press Keys      None    ${customVariable}
#    Press Keys      None    ESC
    Input Text    //*[@placeholder="Contoh: $var1=100&$var2=200"]    ${customVariable}

Input CG Value
    Wait Until Element Is Visible    name:combogrid_value_col
    [Arguments]     ${param}
    Input Text    name:combogrid_value_col    ${param}

Input CG Label
    Wait Until Element Is Visible    name:combogrid_label_col
    [Arguments]     ${param}
    Input Text    name:combogrid_label_col    ${param}

Click Button Simpan
#    Click Element    //*[@id="kt_content_container"]/div[1]/form/div/div[1]/div/div/div[2]/button[2]
    Click Button    default:Simpan
#    Wait Until Element Is Visible    //*[@id="kt_content_container"]/div[1]/form/div/div[1]/div/div/div[2]/button[2]
#    Click Button    //*[@id="kt_content_container"]/div[1]/form/div/div[1]/div/div/div[2]/button[2]
    Wait Until Element Is Visible    id:swal2-content
#    Element Should Contain    xpath://*[@id="swal2-content"]    Template data berhasil disimpan.

Click Icon Eye
    Wait Until Element Is Visible    css:i.fa-eye
    Click Element    css:i.fa-eye
    Element Should Contain    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/div/div/div[1]/div/div[1]/a    Detail Template data

Duplicate Template Data
    Wait Until Element Is Visible    css:i.fa-file
    Click Element       css:i.fa-file
    Click Button        default:Duplikasi

Delete Template Data
    Wait Until Element Is Visible    css:i.fa-trash-alt
    Click Element       css:i.fa-trash-alt
    Click Button        default:Ya, Hapus

Click Icon Pencil
    Wait Until Element Is Visible    css:i.fa-edit
    Click Element    css:i.fa-edit
    Element Should Contain    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[1]/div/div/div[1]/div[1]/a      Ubah Template data

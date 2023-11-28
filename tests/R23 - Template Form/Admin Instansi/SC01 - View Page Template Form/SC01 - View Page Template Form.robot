*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../../libs/template_form.robot

*** Test Cases ***
TC01 - View Page Template Form
    [Documentation]     SC01 - View Page Template Form
    [Tags]  TC01 - View Page Template Form
    login.Open Browser Website
    login.Login Admin Instansi
    template_form.Move To Template Form
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Filter Data Template Form(New Fitur 2023)
    [Documentation]     SC01 - View Page Template Form
    [Tags]  TC02 - Filter Data Template Form(New Fitur 2023)
    login.Open Browser Website
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Click Button Filter
    template_form.Input ID Template    52560
    template_form.Input Nama Template Form    Hitung Retribusi Reklame UAT
    template_form.Click Button Tampilkan Hasil
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser


TC03 - View Detail Template Form
    [Documentation]     SC01 - View Page Template Form
    [Tags]  TC03 - View Detail Template Form
    login.Open Browser Website
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Detail Template Form
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser
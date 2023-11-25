*** Settings ***
Documentation       SC04 - Validasi Field Forgot Password
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot

*** Test Cases ***
TC01 - Validasi field dengan menginput username
    [Documentation]     SC04- Validasi Field Forgot Password
    [Tags]      TC01 - Validasi field dengan menginput username
    login.Open Browser Website
    login.Lupa Kata Sandi
    login.Input Username Lupa Kata Sandi    demo
    login.Click Btn Reset
    Sleep    1s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Validasi field dengan menginput email
    [Documentation]     SC04- Validasi Field Forgot Password
    [Tags]      TC02 - Validasi field dengan menginput email
    login.Open Browser Website
    login.Lupa Kata Sandi
    login.Input Username Lupa Kata Sandi    demo@mailinator.com
    login.Click Btn Reset
    Sleep    1s
    Capture Page Screenshot
    [Teardown]    Close Browser
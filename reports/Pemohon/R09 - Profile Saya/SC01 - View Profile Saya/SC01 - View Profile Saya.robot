*** Settings ***
Documentation       SC01 - View Profile Saya
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../..//libs/profile.robot

*** Test Cases ***
TC01 - View Data Profile
    [Documentation]     SC01 - View Profile Saya
    [Tags]      TC01 - View Data Profile
    login.Open Browser Website
    login.Login Pemohon
    profile.Move To Profile Saya
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Update Password
    [Documentation]     SC01 - View Profile Saya
    [Tags]      TC02 - Update Password
    login.Open Browser Website
    login.Login Pemohon
    profile.Move To Profile Saya
    profile.Update Password
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
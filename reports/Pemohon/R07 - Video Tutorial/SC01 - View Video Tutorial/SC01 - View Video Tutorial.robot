*** Settings ***
Documentation       SC01 - View Video Tutorial
Library             SeleniumLibrary
Resource            ../../../../libs/login.robot
Resource            ../../../..//libs/video_tutorial.robot

*** Test Cases ***
TC01 - View List Video Tutorial
    [Documentation]     SC01 - View Video Tutorial
    [Tags]      TC01 - View Data Simulasi Tarif
    login.Open Browser Website
    login.Login Pemohon
    video_tutorial.Move To Video Tutorial
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Detail List Video Tutorial
    [Documentation]     SC01 - View Video Tutorial
    [Tags]      TC02 - View Detail List Video Tutorial
    login.Open Browser Website
    login.Login Pemohon
    video_tutorial.Move To Video Tutorial
    video_tutorial.Detail Video Tutorial
    Sleep    2s
    Capture Page Screenshot
    [Teardown]    Close Browser
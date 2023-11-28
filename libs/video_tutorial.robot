*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Video Tutorial
    Go To    https://uji.sicantik.go.id/video-tutorial/show
    Sleep    2s
    Wait Until Page Contains    Video Tutorial

Detail Video Tutorial
    Wait Until Element Is Visible    class:rounde-video
    Click Element    class:rounde-video
    Sleep    2s
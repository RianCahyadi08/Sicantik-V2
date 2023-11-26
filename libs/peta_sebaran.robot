*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://uji.sicantik.go.id/sign-in
${BROWSER}          Chrome
${SPEED}            0.1s

*** Keywords ***
Move To Peta Sebaran
    Go To    https://uji.sicantik.go.id/peta-sebaran
    Sleep    2s
    Page Should Contain    Peta Sebaran


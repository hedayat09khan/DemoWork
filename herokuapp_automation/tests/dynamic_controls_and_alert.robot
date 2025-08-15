*** Settings ***
Library    SeleniumLibrary
Library    ../libraries/custom_alert_keywords.py
Resource   ../resources/dynamic_controls_page.robot
Resource   ../resources/javascript_alerts_page.robot

*** Test Cases ***
Dynamic Controls And JS Alert End-to-End
    [Documentation]    POM: Enable input, enter text, handle JS alert.
    Open Browser    https://the-internet.herokuapp.com/    Chrome
    Maximize Browser Window

    # Dynamic Controls Page
    Open Dynamic Controls Page

    Enable Input Field
    # Assert input field is enabled (already in POM keyword)
    Input Text In Field    Hello Sheila
    # Assert text is entered (already in POM keyword)

    # JavaScript Alerts Page
    Open JS Alerts Page
    Trigger And Accept Alert

    [Teardown]    Close Browser

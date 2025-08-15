*** Variables ***
${JS_ALERTS_URL}    https://the-internet.herokuapp.com/javascript_alerts
${TRIGGER_ALERT}    xpath=//button[text()='Click for JS Alert']

*** Keywords ***
Open JS Alerts Page
    Go To    ${JS_ALERTS_URL}

Trigger And Accept Alert
    Click Button    ${TRIGGER_ALERT}
    ${alert_text}=    Get Alert Text
    Should Be Equal    ${alert_text}    I am a JS Alert
    Handle Alert    action=ACCEPT    timeout=10s

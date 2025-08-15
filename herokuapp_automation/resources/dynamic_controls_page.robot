*** Variables ***
${DYNAMIC_CONTROLS_URL}    https://the-internet.herokuapp.com/dynamic_controls
${ENABLE_BUTTON}           xpath=//button[text()='Enable']
${INPUT_FIELD}             xpath=//form[@id='input-example']//input

*** Keywords ***
Open Dynamic Controls Page
    Go To    ${DYNAMIC_CONTROLS_URL}

Enable Input Field
    Click Button    ${ENABLE_BUTTON}
    Wait Until Element Is Enabled    ${INPUT_FIELD}

Input Text In Field
    [Arguments]    ${text}
    Input Text    ${INPUT_FIELD}    ${text}
    Element Attribute Value Should Be    ${INPUT_FIELD}    value    ${text}

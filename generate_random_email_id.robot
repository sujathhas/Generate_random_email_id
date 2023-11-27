*** Settings ***
Library     String
Library    Selenium2Library

*** Variables ***
${name}        tester
${domain}          automation.com

*** Keywords ***
Return Random Email ID
    [Documentation]   Returns a random email id

    ${random}=    Generate Random String   6   [NUMBERS]
    ${email_id}=    Set Variable    ${name}${random}@${domain}
    [Return]    ${email_id}

*** Test Cases ***
Random Email ID
    [Documentation]    This testcase will return random email id
    ${email}=    Return random Email ID
    Log     \nGenerated random email id: ${email}    console=True





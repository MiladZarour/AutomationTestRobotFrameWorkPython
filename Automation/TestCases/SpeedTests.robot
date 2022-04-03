*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegTest

    ${speed}=   get selenium speed
    log to console    ${speed}
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    set selenium speed    0.25 seconds
    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName     John
    input text    name:Email        david.john2d202d@gmail.com
    input text    name:Password     123Test
    input text    name:ConfirmPassword      123Test
    close browser
    ${speed}=   get selenium speed
    log to console    ${speed}
*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegTest

    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    ${implicttime}=     get selenium implicit wait
    log to console      ${implicttime}

    set selenium implicit wait    3 seconds

    ${implicttime}=     get selenium implicit wait
    log to console    ${implicttime}

    select radio button    Gender   M
    input text    name:FirstName1    David
    input text    name:LastName     John
    input text    name:Email        david.john2d202d@gmail.com
    input text    name:Password     123Test
    input text    name:ConfirmPassword      123Test
    close browser
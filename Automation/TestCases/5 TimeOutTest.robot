*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegTest

    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    ${time}=    get selenium timeout
    log to console    ${time}

    set selenium timeout    10 seconds          # it will change the 5 seconds to 10 sec
    wait until page contains    Registration    # 5 seconds it will wait for the text until appear, now it's 10
    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName     John
    input text    name:Email        david.john2d202d@gmail.com
    input text    name:Password     123Test
    input text    name:ConfirmPassword      123Test
    close browser
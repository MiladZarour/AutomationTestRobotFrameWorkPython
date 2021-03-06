*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
NavigationTest
    set selenium speed    0.25 seconds
    open browser    https://www.google.se/?hl=sv    chrome
    ${loc}=     get location
    log to console    ${loc}

    go to    https://www.bing.com/
    ${loc}=     get location
    log to console    ${loc}

    go back
    ${loc}=     get location        # go back to google.com
    log to console    ${loc}

    close browser

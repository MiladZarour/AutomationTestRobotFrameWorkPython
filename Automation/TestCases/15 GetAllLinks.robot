*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window

    ${AllLinksCount}=   get element count    xpath://a
    log to console    ${AllLinksCount}


    @{LinkItems}    create list
    FOR    ${i}     IN RANGE    1   ${AllLinksCount}+1 # it will give us 1 to 16 links
      ${linkText}=    get text    xpath:(//a)[${i}]
      log to console    ${linkText}
    END

    close browser
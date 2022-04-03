*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Testing Frames
    set selenium speed    0.25 seconds
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html   chrome
    select frame    packageListFrame    #id name xpath
    click link    org.openqa.selenium
    unselect frame

    select frame    packageFrame
    click link    WebDriver
    unselect frame

    select frame    classFrame
    click link    Help
    click link    Index
    unselect frame

    close browser
*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    1.5

    # Selecting Radio buttons
    select radio button    sex  Female
    select radio button    exp  5

    # Selecting Check Box
    select checkbox    profession
    select checkbox    profession

    unselect checkbox    profession


*** Keywords ***

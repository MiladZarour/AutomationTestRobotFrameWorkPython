*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Hanlding DrpDowns and Lists
    open browser    ${url}  ${browser}
    maximize browser window

    select from list by label    continents      Australia
    sleep   0.3
    select from list by index    continents      6
    sleep   0.3
    select from list by index    continents      5
    sleep   0.3
    select from list by index    continents      4
        sleep   0.3
    select from list by index    continents      3

    #select from list by value    continents     value

    # list box
    select from list by label    selenium_commands      Switch Commands
    select from list by label    selenium_commands      WebElement Commands
    sleep   0.5
    unselect from list by label    selenium_commands    Switch Commands
    sleep   0.2

    close browser
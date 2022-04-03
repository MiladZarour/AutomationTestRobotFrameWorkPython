*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    click element    xpath://*[@id="Tabbed"]/a/button
    switch window    title=Selenium
    click element    xpath://*[@id="main_navbar"]/ul/li[6]/a
    sleep   3
    close all browsers
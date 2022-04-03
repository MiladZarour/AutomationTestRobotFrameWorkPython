*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
MyTestCase
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    open browser    xpath://*[@id="navbar"]/ul[2]/li[5]/a     chrome
    maximize browser window

    close all browsers
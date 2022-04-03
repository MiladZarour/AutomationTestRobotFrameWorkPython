*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/      chrome
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123

    #capture element screenshot    xpath://*[@id="divLogo"]/img      C:/Users/Milad Zarour/PycharmProjects/Automation/logo.png
    #capture page screenshot      C:/Users/Milad Zarour/PycharmProjects/Automation/LoginTC.png

    capture element screenshot    xpath://*[@id="divLogo"]/img      Logo.png
    capture page screenshot      LoginTC.png
*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    click element    xpath://*[@id="HTML9"]/div[1]/button   # opens alert

    sleep   3
    #handle alert   accept      # using Ok button
    #handle alert    dismiss    # using cancel button
    #handle alert    leave      # do nothing
    #alert should be present    Press a button!
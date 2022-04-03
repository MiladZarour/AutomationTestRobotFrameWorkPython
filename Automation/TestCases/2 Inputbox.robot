*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.resume-now.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    sleep   1
    maximize browser window
    sleep   1
    title should be    Professional Resume Help From the Experts at Resume-Now
    click link    xpath:/html/body/header/div[1]/div[1]/div[2]/nav/ul/li[10]/a
    sleep   1
    ${"email_txt"}  set variable    id:widget-user-email

    element should be visible    ${"email_txt"}
    element should be enabled    ${"email_txt"}

    input text    ${"email_txt"}    miladzarour@hotmail.com
    sleep   1
    clear element text    ${"email_txt"}
    sleep   1
    close browser

*** Keywords ***


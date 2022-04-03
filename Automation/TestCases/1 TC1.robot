*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${browser}  chrome
${url}  https://us05web.zoom.us/signin


*** Test Cases ***
LoginTest
    open browser    ${url}      ${browser}
    loginApplication
    close browser

*** Keywords ***
loginApplication
    click link  xpath://*[@id="navbar"]/ul[2]/li[5]/a
    click element   //*[@id="onetrust-accept-btn-handler"]
    sleep    2
    input text  id:email        miladzarour@hotmail.com
    sleep    0.5
    input text  id:password     13271364Rm!
    sleep    0.5
    click element   xpath://*[@id="login-form"]/div[4]/div/div[1]/button
    sleep    2